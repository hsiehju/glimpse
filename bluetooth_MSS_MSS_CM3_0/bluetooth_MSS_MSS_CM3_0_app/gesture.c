/*
 * gesture.c
 *
 *  Created on: Apr 8, 2016
 *      Author: hsiehju
 */

#include "drivers/mss_i2c/mss_i2c.h"
#include "gesture.h"


/**
* @brief Configures I2C communications and initializes registers to defaults
*
* @return True if initialized successfully. False otherwise.
*/
int gesture_init () {
	gesture_ud_delta_ = 0;
	gesture_lr_delta_ = 0;

	gesture_ud_count_ = 0;
	gesture_lr_count_ = 0;

	gesture_near_count_ = 0;
	gesture_far_count_ = 0;

	gesture_state_ = 0;
	gesture_motion_ = DIR_NONE;

	/* Enable gesture mode
	Set ENABLE to 0 (power off)
	Set WTIME to 0xFF
	Set AUX to LED_BOOST_300
	Enable PON, WEN, PEN, GEN in ENABLE
	*/
	resetGestureParameters();
	wireWriteDataByte(APDS9960_WTIME, 0xFF);
	wireWriteDataByte(APDS9960_PPULSE, DEFAULT_GESTURE_PPULSE);


	setLEDBoost(LED_BOOST_300);


	setGestureIntEnable(1);

	setGestureMode(1);

	enablePower();

	setMode(WAIT, 1);

	setMode(PROXIMITY, 1);

	setMode(GESTURE, 1);

	return 0;
}

void resetGestureParameters() {
	gesture_data_.index = 0;
	gesture_data_.total_gestures = 0;

	gesture_ud_delta_ = 0;
	gesture_lr_delta_ = 0;

	gesture_ud_count_ = 0;
	gesture_lr_count_ = 0;

	gesture_near_count_ = 0;
	gesture_far_count_ = 0;

	gesture_state_ = 0;
	gesture_motion_ = DIR_NONE;
}

void wireWriteDataByte(uint8_t reg, uint8_t val) {
	MSS_I2C_write(&g_mss_i2c1, reg, &val, sizeof(val), MSS_I2C_RELEASE_BUS);
	MSS_I2C_wait_complete(&g_mss_i2c1, MSS_I2C_NO_TIMEOUT);
}

void wireReadDataByte(uint8_t reg, uint8_t val) {
	MSS_I2C_read(&g_mss_i2c1, reg, &val, sizeof(val), MSS_I2C_RELEASE_BUS);
	MSS_I2C_wait_complete(&g_mss_i2c1, MSS_I2C_NO_TIMEOUT);
}

void setLEDBoost(uint8_t boost){
	uint8_t val;

	/* Read value from CONFIG2 register */
	wireReadDataByte(APDS9960_CONFIG2, val);

	/* Set bits in register to given value */
	boost &= 0b00000011;
	boost = boost << 4;
	val &= 0b11001111;
	val |= boost;

	/* Write register value back into CONFIG2 register */
	wireWriteDataByte(APDS9960_CONFIG2, val);
}

void setGestureIntEnable(uint8_t enable) {
	uint8_t val;

	/* Read value from GCONF4 register */

	/* Set bits in register to given value */
	enable &= 0b00000001;
	enable = enable << 1;
	val &= 0b11111101;
	val |= enable;

	/* Write register value back into GCONF4 register */
	wireWriteDataByte(APDS9960_GCONF4, val);

}
void setGestureMode(uint8_t mode) {
	uint8_t val;

	/* Read value from GCONF4 register */
	wireReadDataByte(APDS9960_GCONF4, val);

	/* Set bits in register to given value */
	mode &= 0b00000001;
	val &= 0b11111110;
	val |= mode;

	/* Write register value back into GCONF4 register */
	wireWriteDataByte(APDS9960_GCONF4, val);
}
void enablePower() {
	setMode(POWER, 1);
}
void setMode(uint8_t mode, uint8_t enable) {
	uint8_t reg_val;

	/* Read current ENABLE register */
	reg_val = getMode();

	/* Change bit(s) in ENABLE register */
	enable = enable & 0x01;
	if( mode >= 0 && mode <= 6 ) {
		if (enable) {
			reg_val |= (1 << mode);
		} else {
			reg_val &= ~(1 << mode);
		}
	} else if( mode == ALL ) {
		if (enable) {
			reg_val = 0x7F;
		} else {
			reg_val = 0x00;
		}
	}

	/* Write value back to ENABLE register */
	wireWriteDataByte(APDS9960_ENABLE, reg_val);
}

uint8_t getMode() {
	uint8_t enable_value;

	/* Read current ENABLE register */
	wireReadDataByte(APDS9960_ENABLE, enable_value);

	return enable_value;
}

uint8_t isGestureAvailable() {
	uint8_t val;

	/* Read value from GSTATUS register */
	wireReadDataByte(APDS9960_GSTATUS, val);


	/* Shift and mask out GVALID bit */
	val &= APDS9960_GVALID;

	/* Return true/false based on GVALID bit */
	if( val == 1) {
		return 1;
	} else {
		return 0;
	}
}

int readGesture() {
	uint8_t fifo_level = 0;
	uint8_t bytes_read = 0;
	uint8_t fifo_data[128];
	uint8_t gstatus;
	int motion;
	int i;

	/* Make sure that power and gesture is on and data is valid */
	if( !isGestureAvailable() || !(getMode() & 0b01000001) ) {
		return DIR_NONE;
	}

	/* Keep looping as long as gesture data is valid */
	while(1) {
		/* Wait some time to collect next batch of FIFO data */
		//sleep(2000);

		/* Get the contents of the STATUS register. Is data still valid? */
		wireReadDataByte(APDS9960_GSTATUS, gstatus);


		/* If we have valid data, read in FIFO */
		if( (gstatus & APDS9960_GVALID) == APDS9960_GVALID ) {

			/* Read the current FIFO level */
			wireReadDataByte(APDS9960_GFLVL, fifo_level);


#if DEBUG
			Serial.print("FIFO Level: ");
			Serial.println(fifo_level);
#endif

			/* If there's stuff in the FIFO, read it into our data block */
			if( fifo_level > 0) {
				bytes_read = wireReadDataBlock(  APDS9960_GFIFO_U,
				(uint8_t*)fifo_data,
				(fifo_level * 4) );
				if( bytes_read == -1 ) {
					return ERROR;
				}
#if DEBUG
				Serial.print("FIFO Dump: ");
				for ( i = 0; i < bytes_read; i++ ) {
					Serial.print(fifo_data[i]);
					Serial.print(" ");
				}
				Serial.println();
#endif

				/* If at least 1 set of data, sort the data into U/D/L/R */
				if( bytes_read >= 4 ) {
					for( i = 0; i < bytes_read; i += 4 ) {
						gesture_data_.u_data[gesture_data_.index] = \
						fifo_data[i + 0];
						gesture_data_.d_data[gesture_data_.index] = \
						fifo_data[i + 1];
						gesture_data_.l_data[gesture_data_.index] = \
						fifo_data[i + 2];
						gesture_data_.r_data[gesture_data_.index] = \
						fifo_data[i + 3];
						gesture_data_.index++;
						gesture_data_.total_gestures++;
					}

#if DEBUG
					Serial.print("Up Data: ");
					for ( i = 0; i < gesture_data_.total_gestures; i++ ) {
						Serial.print(gesture_data_.u_data[i]);
						Serial.print(" ");
					}
					Serial.println();
#endif

					/* Filter and process gesture data. Decode near/far state */
					if( processGestureData() ) {
						if( decodeGesture() ) {
							//***TODO: U-Turn Gestures
#if DEBUG
							//Serial.println(gesture_motion_);
#endif
						}
					}

					/* Reset data */
					gesture_data_.index = 0;
					gesture_data_.total_gestures = 0;
				}
			}
		} else {

			/* Determine best guessed gesture and clean up */
			//delay(FIFO_PAUSE_TIME);
			decodeGesture();
			motion = gesture_motion_;
#if DEBUG
			Serial.print("END: ");
			Serial.println(gesture_motion_);
#endif
			resetGestureParameters();
			return motion;
		}
	}
}

uint8_t processGestureData() {
	uint8_t u_first = 0;
	uint8_t d_first = 0;
	uint8_t l_first = 0;
	uint8_t r_first = 0;
	uint8_t u_last = 0;
	uint8_t d_last = 0;
	uint8_t l_last = 0;
	uint8_t r_last = 0;
	int ud_ratio_first;
	int lr_ratio_first;
	int ud_ratio_last;
	int lr_ratio_last;
	int ud_delta;
	int lr_delta;
	int i;

	/* If we have less than 4 total gestures, that's not enough */
	if( gesture_data_.total_gestures <= 4 ) {
		return 0;
	}

	/* Check to make sure our data isn't out of bounds */
	if( (gesture_data_.total_gestures <= 32) && \
			(gesture_data_.total_gestures > 0) ) {

		/* Find the first value in U/D/L/R above the threshold */
		for( i = 0; i < gesture_data_.total_gestures; i++ ) {
			if( (gesture_data_.u_data[i] > GESTURE_THRESHOLD_OUT) &&
					(gesture_data_.d_data[i] > GESTURE_THRESHOLD_OUT) &&
					(gesture_data_.l_data[i] > GESTURE_THRESHOLD_OUT) &&
					(gesture_data_.r_data[i] > GESTURE_THRESHOLD_OUT) ) {

				u_first = gesture_data_.u_data[i];
				d_first = gesture_data_.d_data[i];
				l_first = gesture_data_.l_data[i];
				r_first = gesture_data_.r_data[i];
				break;
			}
		}

		/* If one of the _first values is 0, then there is no good data */
		if( (u_first == 0) || (d_first == 0) || \
				(l_first == 0) || (r_first == 0) ) {

			return 0;
		}
		/* Find the last value in U/D/L/R above the threshold */
		for( i = gesture_data_.total_gestures - 1; i >= 0; i-- ) {
#if DEBUG
			Serial.print(F("Finding last: "));
			Serial.print(F("U:"));
			Serial.print(gesture_data_.u_data[i]);
			Serial.print(F(" D:"));
			Serial.print(gesture_data_.d_data[i]);
			Serial.print(F(" L:"));
			Serial.print(gesture_data_.l_data[i]);
			Serial.print(F(" R:"));
			Serial.println(gesture_data_.r_data[i]);
#endif
			if( (gesture_data_.u_data[i] > GESTURE_THRESHOLD_OUT) &&
					(gesture_data_.d_data[i] > GESTURE_THRESHOLD_OUT) &&
					(gesture_data_.l_data[i] > GESTURE_THRESHOLD_OUT) &&
					(gesture_data_.r_data[i] > GESTURE_THRESHOLD_OUT) ) {

				u_last = gesture_data_.u_data[i];
				d_last = gesture_data_.d_data[i];
				l_last = gesture_data_.l_data[i];
				r_last = gesture_data_.r_data[i];
				break;
			}
		}
	}

	/* Calculate the first vs. last ratio of up/down and left/right */
	ud_ratio_first = ((u_first - d_first) * 100) / (u_first + d_first);
	lr_ratio_first = ((l_first - r_first) * 100) / (l_first + r_first);
	ud_ratio_last = ((u_last - d_last) * 100) / (u_last + d_last);
	lr_ratio_last = ((l_last - r_last) * 100) / (l_last + r_last);

#if DEBUG
	Serial.print(F("Last Values: "));
	Serial.print(F("U:"));
	Serial.print(u_last);
	Serial.print(F(" D:"));
	Serial.print(d_last);
	Serial.print(F(" L:"));
	Serial.print(l_last);
	Serial.print(F(" R:"));
	Serial.println(r_last);

	Serial.print(F("Ratios: "));
	Serial.print(F("UD Fi: "));
	Serial.print(ud_ratio_first);
	Serial.print(F(" UD La: "));
	Serial.print(ud_ratio_last);
	Serial.print(F(" LR Fi: "));
	Serial.print(lr_ratio_first);
	Serial.print(F(" LR La: "));
	Serial.println(lr_ratio_last);
#endif

	/* Determine the difference between the first and last ratios */
	ud_delta = ud_ratio_last - ud_ratio_first;
	lr_delta = lr_ratio_last - lr_ratio_first;

#if DEBUG
	Serial.print("Deltas: ");
	Serial.print("UD: ");
	Serial.print(ud_delta);
	Serial.print(" LR: ");
	Serial.println(lr_delta);
#endif

	/* Accumulate the UD and LR delta values */
	gesture_ud_delta_ += ud_delta;
	gesture_lr_delta_ += lr_delta;

#if DEBUG
	Serial.print("Accumulations: ");
	Serial.print("UD: ");
	Serial.print(gesture_ud_delta_);
	Serial.print(" LR: ");
	Serial.println(gesture_lr_delta_);
#endif

	/* Determine U/D gesture */
	if( gesture_ud_delta_ >= GESTURE_SENSITIVITY_1 ) {
		gesture_ud_count_ = 1;
	} else if( gesture_ud_delta_ <= -GESTURE_SENSITIVITY_1 ) {
		gesture_ud_count_ = -1;
	} else {
		gesture_ud_count_ = 0;
	}

	/* Determine L/R gesture */
	if( gesture_lr_delta_ >= GESTURE_SENSITIVITY_1 ) {
		gesture_lr_count_ = 1;
	} else if( gesture_lr_delta_ <= -GESTURE_SENSITIVITY_1 ) {
		gesture_lr_count_ = -1;
	} else {
		gesture_lr_count_ = 0;
	}

	/* Determine Near/Far gesture */
	if( (gesture_ud_count_ == 0) && (gesture_lr_count_ == 0) ) {
		if( (abs(ud_delta) < GESTURE_SENSITIVITY_2) && \
				(abs(lr_delta) < GESTURE_SENSITIVITY_2) ) {

			if( (ud_delta == 0) && (lr_delta == 0) ) {
				gesture_near_count_++;
			} else if( (ud_delta != 0) || (lr_delta != 0) ) {
				gesture_far_count_++;
			}

			if( (gesture_near_count_ >= 10) && (gesture_far_count_ >= 2) ) {
				if( (ud_delta == 0) && (lr_delta == 0) ) {
					gesture_state_ = NEAR_STATE;
				} else if( (ud_delta != 0) && (lr_delta != 0) ) {
					gesture_state_ = FAR_STATE;
				}
				return 1;
			}
		}
	} else {
		if( (abs(ud_delta) < GESTURE_SENSITIVITY_2) && \
				(abs(lr_delta) < GESTURE_SENSITIVITY_2) ) {

			if( (ud_delta == 0) && (lr_delta == 0) ) {
				gesture_near_count_++;
			}

			if( gesture_near_count_ >= 10 ) {
				gesture_ud_count_ = 0;
				gesture_lr_count_ = 0;
				gesture_ud_delta_ = 0;
				gesture_lr_delta_ = 0;
			}
		}
	}

#if DEBUG
	Serial.print("UD_CT: ");
	Serial.print(gesture_ud_count_);
	Serial.print(" LR_CT: ");
	Serial.print(gesture_lr_count_);
	Serial.print(" NEAR_CT: ");
	Serial.print(gesture_near_count_);
	Serial.print(" FAR_CT: ");
	Serial.println(gesture_far_count_);
	Serial.println("----------");
#endif

	return 0;
}

uint8_t decodeGesture() {
	/* Return if near or far event is detected */
	if( gesture_state_ == NEAR_STATE ) {
		gesture_motion_ = DIR_NEAR;
		return 1;
	} else if ( gesture_state_ == FAR_STATE ) {
		gesture_motion_ = DIR_FAR;
		return 1;
	}

	/* Determine swipe direction */
	if( (gesture_ud_count_ == -1) && (gesture_lr_count_ == 0) ) {
		gesture_motion_ = DIR_UP;
	} else if( (gesture_ud_count_ == 1) && (gesture_lr_count_ == 0) ) {
		gesture_motion_ = DIR_DOWN;
	} else if( (gesture_ud_count_ == 0) && (gesture_lr_count_ == 1) ) {
		gesture_motion_ = DIR_RIGHT;
	} else if( (gesture_ud_count_ == 0) && (gesture_lr_count_ == -1) ) {
		gesture_motion_ = DIR_LEFT;
	} else if( (gesture_ud_count_ == -1) && (gesture_lr_count_ == 1) ) {
		if( abs(gesture_ud_delta_) > abs(gesture_lr_delta_) ) {
			gesture_motion_ = DIR_UP;
		} else {
			gesture_motion_ = DIR_RIGHT;
		}
	} else if( (gesture_ud_count_ == 1) && (gesture_lr_count_ == -1) ) {
		if( abs(gesture_ud_delta_) > abs(gesture_lr_delta_) ) {
			gesture_motion_ = DIR_DOWN;
		} else {
			gesture_motion_ = DIR_LEFT;
		}
	} else if( (gesture_ud_count_ == -1) && (gesture_lr_count_ == -1) ) {
		if( abs(gesture_ud_delta_) > abs(gesture_lr_delta_) ) {
			gesture_motion_ = DIR_UP;
		} else {
			gesture_motion_ = DIR_LEFT;
		}
	} else if( (gesture_ud_count_ == 1) && (gesture_lr_count_ == 1) ) {
		if( abs(gesture_ud_delta_) > abs(gesture_lr_delta_) ) {
			gesture_motion_ = DIR_DOWN;
		} else {
			gesture_motion_ = DIR_RIGHT;
		}
	} else {
		return 0;
	}

	return 1;
}

uint8_t wireWriteDataBlock(uint8_t reg, uint8_t *val, unsigned int len) {
	unsigned char i = 0;
	for(i = 0; i < len; ++i) {
		MSS_I2C_write(&g_mss_i2c1, reg, val[i], len, MSS_I2C_RELEASE_BUS);
		MSS_I2C_wait_complete(&g_mss_i2c1, MSS_I2C_NO_TIMEOUT);
	}
	return 1;
}
