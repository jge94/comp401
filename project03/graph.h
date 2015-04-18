#ifndef _GRAPH_
#define _GRAPH_

#include <string>
#include <iostream>

using namespace std;


class City
{
	public:
		City();
		City(string name);

		// void assignPointer(City cityOne, City cityTwo, City cityThree);
		// void distanceTo(City& anotherCity);
		string name();

		string cityName;
		// City* ptOne;
		// City* ptTwo;
		// City* ptThree;
};


class Edge
{
	public:
		Edge();
		Edge(City& cityOne, City& cityTwo, int distance);
		~Edge();

		int distance();

		City* from;
		City* to;
		int length;
};


#endif