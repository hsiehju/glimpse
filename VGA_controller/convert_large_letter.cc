#include <iostream>
#include <string>
#include <fstream>

using namespace std;

void convert(string &input, ofstream &output);

int main(){
	string input_file = "input.txt";
	string output_file = "out.txt";
	ifstream input;
	ofstream output;
	input.open(input_file.c_str());
	output.open(output_file.c_str());
	
	string input_str = "";
	string output_str = "";
	string buffer = "";
	
	int counter = 0;

	while (getline(input, input_str)){
		if (counter == 32){
			convert(output_str, output);
			cout << output_str.size() << endl;
			output_str = "";
			counter = 0;
		}
		for (size_t i = 0; i < input_str.size(); ++i){
			buffer += input_str[i];
			buffer += input_str[i];
		}
		//buffer += '\n';
		output_str += buffer;
		output_str += buffer;
		buffer = "";
		counter++;
		
	}
	return 0;
}

void convert(string &input, ofstream &output){
	string first = "";
	string second = "";
	string third = "";
	string fourth = "";
	int counter = 0;
	
	for (size_t i = 0; i < 1024; ++i){
		if (counter % 32 == 0)
			counter = 0;
		
		if (counter < 16){
			first += input[i];
			//if (counter == 15)
			//	first += '\n';
		}
		else{
			second += input[i];
			//if (counter == 31)
			//	second += '\n';
		}
		
		++counter;
	}
	
	counter = 0;
	for (size_t i = 1024; i < 2048; ++i){
		if (counter % 32 == 0)
			counter = 0;
		
		if (counter < 16){
			third += input[i];
			//if (counter == 15)
			//	third += '\n';
		}
		else{
			fourth += input[i];
			//if (counter == 31)
			//	fourth += '\n';
		}
		++counter;
	}

	output << first << second << third << fourth;
}
