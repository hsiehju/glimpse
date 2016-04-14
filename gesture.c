/*
 * gesture.c
 *
 *  Created on: Apr 8, 2016
 *      Author: hsiehju
 */

#include "drivers/mss_i2c/mss_i2c.h"
#include "gesture.h"
#include "globals.h"
#include "frame.h"


/**
 * @brief Configures I2C communications and initializes registers to defaults
 *
 * @return True if initialized successfully. False otherwise.
 */

void handle_gesture() {
	if(isGestureAvailable()) {
		int i = 0;
		while(i < 1000000) {
			i++;
		}
		gesture = readGesture();
		update_page(page_selected, gesture);
	}
}


int gesture_init () {
    gesture_ud_delta_ = 0;
    gesture_lr_delta_ = 0;

    gesture_ud_count_ = 0;
    gesture_lr_count_ = 0;

    gesture_near_count_ = 0;
    gesture_far_count_ = 0;

    gesture_state_ = 0;
    gesture_motion_ = DIR_NONE;


    uint8_t id;
    wireReadDataByte(APDS9960_ID, &id);

    if(!(id == APDS9960_ID_1) || (id == APDS9960_ID_2)) {
        return -1;
    }

    setMode(ALL, OFF);

    wireWriteDataByte(APDS9960_ATIME, DEFAULT_ATIME);

    wireWriteDataByte(APDS9960_WTIME, DEFAULT_WTIME);

    wireWriteDataByte(APDS9960_PPULSE, DEFAULT_PROX_PPULSE);

    wireWriteDataByte(APDS9960_POFFSET_UR, DEFAULT_POFFSET_UR);

    wireWriteDataByte(APDS9960_POFFSET_DL, DEFAULT_POFFSET_DL);

    wireWriteDataByte(APDS9960_CONFIG1, DEFAULT_CONFIG1);

    setLEDDrive(DEFAULT_LDRIVE);

    setProximityGain(DEFAULT_PGAIN);

    setAmbientLightGain(DEFAULT_AGAIN);

    setProxIntLowThresh(DEFAULT_PILT);

    setProxIntHighThresh(DEFAULT_PIHT);

    setLightIntLowThreshold(DEFAULT_AILT);

    setLightIntHighThreshold(DEFAULT_AIHT);

    wireWriteDataByte(APDS9960_PERS, DEFAULT_PERS);

    wireWriteDataByte(APDS9960_CONFIG2, DEFAULT_CONFIG2);

    wireWriteDataByte(APDS9960_CONFIG3, DEFAULT_CONFIG3);

    setGestureEnterThresh(DEFAULT_GPENTH);

    setGestureExitThresh(DEFAULT_GEXTH);

    wireWriteDataByte(APDS9960_GCONF1, DEFAULT_GCONF1);

    setGestureGain(DEFAULT_GGAIN);

    setGestureLEDDrive(DEFAULT_GLDRIVE);

    setGestureWaitTime(DEFAULT_GWTIME);

    wireWriteDataByte(APDS9960_GOFFSET_U, DEFAULT_GOFFSET);

    wireWriteDataByte(APDS9960_GOFFSET_D, DEFAULT_GOFFSET);

    wireWriteDataByte(APDS9960_GOFFSET_L, DEFAULT_GOFFSET);

    wireWriteDataByte(APDS9960_GOFFSET_R, DEFAULT_GOFFSET);

    wireWriteDataByte(APDS9960_GPULSE, DEFAULT_GPULSE);

    wireWriteDataByte(APDS9960_GCONF3, DEFAULT_GCONF3);

    setGestureIntEnable(DEFAULT_GIEN);

    return 0;
}



void enable_gesture() {
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
}


////////////////////
//////PROXIMITY ////
////////////////////
void setProximityGain(uint8_t drive) {
    uint8_t val;

    wireReadDataByte(APDS9960_CONTROL, &val);

    drive &= 0b00000011;
    drive = drive << 2;
    val &= 0b11110011;
    val |= drive;

    wireWriteDataByte(APDS9960_CONTROL, val);
}
void setProxIntHighThresh(uint8_t threshold) {
    wireWriteDataByte(APDS9960_PIHT, threshold);
}

void setProxIntLowThresh(uint8_t threshold) {
    wireWriteDataByte(APDS9960_PILT, threshold);
}







////////////////////
////// LED /////////
////////////////////
void setLEDBoost(uint8_t boost){
    uint8_t val;

    /* Read value from CONFIG2 register */
    wireReadDataByte(APDS9960_CONFIG2, &val);

    /* Set bits in register to given value */
    boost &= 0b00000011;
    boost = boost << 4;
    val &= 0b11001111;
    val |= boost;

    /* Write register value back into CONFIG2 register */
    wireWriteDataByte(APDS9960_CONFIG2, val);
}

void setLEDDrive(uint8_t drive) {
    uint8_t val;

    wireReadDataByte(APDS9960_CONTROL, &val);

    drive &= 0b00000011;
    drive = drive << 6;
    val &= 0b00111111;
    val |= drive;

    wireWriteDataByte(APDS9960_CONTROL, val);
}

void setLightIntLowThreshold(uint8_t threshold) {
    uint8_t val_low;
    uint8_t val_high;

    val_low = threshold & 0x00FF;
    val_high = (threshold & 0xFF00) >> 8;

    wireWriteDataByte(APDS9960_AILTL, val_low);

    wireWriteDataByte(APDS9960_AILTH, val_high);
}
void setLightIntHighThreshold(uint8_t threshold) {
    uint8_t val_low;
    uint8_t val_high;

    val_low = threshold & 0x00FF;
    val_high = (threshold & 0xFF00) >> 8;

    wireWriteDataByte(APDS9960_AIHTL, val_low);

    wireWriteDataByte(APDS9960_AIHTH, val_high);
}

void setAmbientLightGain(uint8_t drive) {
    uint8_t val;

    wireReadDataByte(APDS9960_CONTROL, &val);

    drive &= 0b00000011;
    val &= 0b11111100;
    val |= drive;

    wireWriteDataByte(APDS9960_CONTROL, val);
}





////////////////////
////// GESTURE /////
////////////////////

void setGestureIntEnable(uint8_t enable) {
    uint8_t val;

    wireReadDataByte(APDS9960_GCONF4, &val);

    enable &= 0b00000001;
    enable = enable << 1;
    val &= 0b11111101;
    val |= enable;

    wireWriteDataByte(APDS9960_GCONF4, val);
}

void setGestureMode(uint8_t mode) {
    uint8_t val;

    /* Read value from GCONF4 register */
    wireReadDataByte(APDS9960_GCONF4, &val);

    /* Set bits in register to given value */
    mode &= 0b00000001;
    val &= 0b11111110;
    val |= mode;

    /* Write register value back into GCONF4 register */
    wireWriteDataByte(APDS9960_GCONF4, val);
}

void setGestureEnterThresh(uint8_t threshold) {
    wireWriteDataByte(APDS9960_GPENTH, threshold);
}
void setGestureExitThresh(uint8_t threshold) {
    wireWriteDataByte(APDS9960_GEXTH, threshold);
}

void setGestureGain(uint8_t gain) {
    uint8_t val;

    wireReadDataByte(APDS9960_GCONF2, &val);

    gain &= 0b00000011;
    gain = gain << 5;
    val &= 0b10011111;
    val |= gain;

    wireWriteDataByte(APDS9960_GCONF2, val);
}
void setGestureLEDDrive(uint8_t drive) {
    uint8_t val;

    wireReadDataByte(APDS9960_GCONF2, &val);

    drive &= 0b00000011;
    drive = drive << 3;
    val &= 0b11100111;
    val |= drive;

    wireWriteDataByte(APDS9960_GCONF2, val);

}
void setGestureWaitTime(uint8_t time) {
    uint8_t val;

    wireReadDataByte(APDS9960_GCONF2, &val);

    time &= 0b00000111;
    val &= 0b11111000;
    val |= time;

    wireWriteDataByte(APDS9960_GCONF2, val);
}





// RAW I2C FUNCTIONS
void wireWriteDataByte(uint8_t reg, uint8_t val) {

    uint8_t transmit_buf[] = {reg, val};

    MSS_I2C_write(&g_mss_i2c1, APDS9960_I2C_ADDR, transmit_buf, sizeof(transmit_buf), MSS_I2C_RELEASE_BUS);
    MSS_I2C_wait_complete(&g_mss_i2c1, MSS_I2C_NO_TIMEOUT);
}

void wireReadDataByte(uint8_t reg, uint8_t* val) {

    MSS_I2C_write(&g_mss_i2c1, APDS9960_I2C_ADDR, &reg, sizeof(reg), MSS_I2C_RELEASE_BUS);
    MSS_I2C_wait_complete(&g_mss_i2c1, MSS_I2C_NO_TIMEOUT);

    uint8_t recieve_buf;

    MSS_I2C_read(&g_mss_i2c1, APDS9960_I2C_ADDR, &recieve_buf, sizeof(recieve_buf), MSS_I2C_RELEASE_BUS);
    MSS_I2C_wait_complete(&g_mss_i2c1, MSS_I2C_NO_TIMEOUT);

    *val = recieve_buf;
}

uint8_t wireWriteDataBlock(uint8_t reg, uint8_t* val, unsigned int len){
    MSS_I2C_write(&g_mss_i2c1, APDS9960_I2C_ADDR, &reg, sizeof(reg), MSS_I2C_RELEASE_BUS);
    MSS_I2C_wait_complete(&g_mss_i2c1, MSS_I2C_NO_TIMEOUT);

    MSS_I2C_write(&g_mss_i2c1, APDS9960_I2C_ADDR, val, len, MSS_I2C_RELEASE_BUS);
    MSS_I2C_wait_complete(&g_mss_i2c1, MSS_I2C_NO_TIMEOUT);
}


uint8_t wireReadDataBlock(uint8_t reg, uint8_t* val, unsigned int len){
    MSS_I2C_write(&g_mss_i2c1, APDS9960_I2C_ADDR, &reg, sizeof(reg), MSS_I2C_RELEASE_BUS);
    MSS_I2C_wait_complete(&g_mss_i2c1, MSS_I2C_NO_TIMEOUT);


    MSS_I2C_read(&g_mss_i2c1, APDS9960_I2C_ADDR, val, len, MSS_I2C_RELEASE_BUS);
    MSS_I2C_wait_complete(&g_mss_i2c1, MSS_I2C_NO_TIMEOUT);

    return len;
}




// User
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

void enablePower() {
    setMode(POWER, 1);
}
void setMode(uint8_t mode, uint8_t enable) {
    uint8_t reg_val;

    /* Read current ENABLE register */
    reg_val = getMode();
    if(reg_val == ERROR) {
        return;
    }

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
    wireReadDataByte(APDS9960_ENABLE, &enable_value);

    return enable_value;
}

uint8_t isGestureAvailable() {
    uint8_t val;

    /* Read value from GSTATUS register */
    wireReadDataByte(APDS9960_GSTATUS, &val);


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
        wireReadDataByte(APDS9960_GSTATUS, &gstatus);


        /* If we have valid data, read in FIFO */
        if( (gstatus & APDS9960_GVALID) == APDS9960_GVALID ) {

            /* Read the current FIFO level */
            wireReadDataByte(APDS9960_GFLVL, &fifo_level);


#if DEBUG
            Serial.print("FIFO Level: ");
            Serial.println(fifo_level);
#endif

            /* If there's stuff in the FIFO, read it into our data block */
            if( fifo_level > 0) {
                bytes_read = wireReadDataBlock(  APDS9960_GFIFO_U,(uint8_t*)fifo_data,(fifo_level * 4) );
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
                        gesture_data_.u_data[gesture_data_.index] = fifo_data[i + 0];
                        gesture_data_.d_data[gesture_data_.index] = fifo_data[i + 1];
                        gesture_data_.l_data[gesture_data_.index] = fifo_data[i + 2];
                        gesture_data_.r_data[gesture_data_.index] = fifo_data[i + 3];
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
            // delay(FIFO_PAUSE_TIME);
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
    if( (gesture_data_.total_gestures <= 32) && (gesture_data_.total_gestures > 0) ) {

        /* Find the first value in U/D/L/R above the threshold */
        for( i = 0; i < gesture_data_.total_gestures; i++ ) {
            if( (gesture_data_.u_data[i] > GESTURE_THRESHOLD_OUT) && (gesture_data_.d_data[i] > GESTURE_THRESHOLD_OUT) &&
               (gesture_data_.l_data[i] > GESTURE_THRESHOLD_OUT) && (gesture_data_.r_data[i] > GESTURE_THRESHOLD_OUT) ) {
                u_first = gesture_data_.u_data[i];
                d_first = gesture_data_.d_data[i];
                l_first = gesture_data_.l_data[i];
                r_first = gesture_data_.r_data[i];
                break;
            }
        }

        /* If one of the _first values is 0, then there is no good data */
        if( (u_first == 0) || (d_first == 0) || (l_first == 0) || (r_first == 0) ) {

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
        if( (abs(ud_delta) < GESTURE_SENSITIVITY_2) && (abs(lr_delta) < GESTURE_SENSITIVITY_2) ) {

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
        if( (abs(ud_delta) < GESTURE_SENSITIVITY_2) && (abs(lr_delta) < GESTURE_SENSITIVITY_2) ) {

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
