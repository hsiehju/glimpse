#include <iostream>
#include <string>

using namespace std;

int main(){
	string input = "00000000000000000000000000000000000000000000000000000000000000000011111111110000001111111111000011110000001111001111000000111100111100000011110011110000001111001111000000111100111100000011110000111111111111000011111111111100000000000011110000000000001111000000000000111100000000000011110000000000001111000000000000111100000000001111000000000000111100000011111111000000001111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
	string output = "";
	string buffer = "";

	for (size_t i = 0; i < 32; ++i){
		for (size_t j = 0; j < 16; ++j){
			buffer += input[i*16 + j];
			buffer += input[i*16 + j];
		}
		output += buffer;
		output += '\n';
		output += buffer;
		output += '\n';
		buffer = "";
	}

	cout << output << endl;

	return 0;
}
