#include "graph.h"

#include <iostream>
#include <string>

using namespace std;

//-----------------------------------------------------------------------
//----- Constructors (CTOR) ---------------------------------------------

City::City()
{
	this->cityName = "";
}


City::City(string name)
{
	this->cityName = name;
}


// City::~City()
// {
// 	delete this->cityName;
// }

string City::name()
{
	return cityName;
}
// Edge();
// Edge(City cityOne, City cityTwo);
// ~Edge();

Edge::Edge()
{
	this->from = NULL;
	this->to = NULL;
	this->length = 0;
}


Edge::Edge(City& cityOne, City& cityTwo, int distance)
{
	this->from = &cityOne;
	this->to = &cityTwo;
	this->length = distance;
}


Edge::~Edge()
{
	//delete from;
	//delete to;
}

int Edge::distance()
{
	return length;
}



