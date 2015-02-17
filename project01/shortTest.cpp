// reading a text file
#include <iostream>
#include <fstream>
#include <string>
using namespace std;

int main () {
  string line;
  ifstream myfile ("data.txt");
  if (myfile.is_open())
  {
    while ( getline (myfile,line) )
    {
      int num = atoi(line.c_str());
      cout << num << '\n';
    }
    myfile.close();
  }

  else cout << "Unable to open file\n"; 

  return 0;
}