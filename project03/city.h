#ifndef _CITY_
#define _CITY_

#include <string>
#include <iostream>

using namespace std;

class City
{
	public:
		City();
		City(string name);
		~City();

		void assignPointer(City cityOne, City cityTwo, City cityThree);
		void distanceTo(City& anotherCity);

		string cityName;
		City* ptOne;
		City* ptTwo;
		City* ptThree;
};

#endif