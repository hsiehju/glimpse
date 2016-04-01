#include <string>
#include <fstream>
#include <iostream>

using namespace std;

int main(){
	ifstream input_file;
	string filename = "letters.txt";
	input_file.open(filename.c_str());
	ofstream output_file;
	string filename_out = "library.txt";
	output_file.open(filename_out.c_str());
	string letter = "";
	string new_letter = "";
		
	while(input_file >> letter){
		if(letter.size() > 3){
			new_letter = "";
			for(int i = 0; i < letter.size(); ++i){
				new_letter += letter[i];
				new_letter += letter[i];
			}
			new_letter += "\n";
			output_file << new_letter;
			output_file << new_letter;
		}
	}
}
