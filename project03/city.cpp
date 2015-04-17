#include "city.h"

#include <iostream>
#include <string>

using namespace std;

//-----------------------------------------------------------------------
//----- Constructors (CTOR) ---------------------------------------------

City::City()
{
	this->cityName = NULL;
}


City::City(string name)
{
	this->cityName = name;
}


City::~City()
{
	delete City;
}