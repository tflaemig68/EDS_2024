/*
 * route.h
 *
 *  Created on: 24.01.2024
 *      Author: Flaemig
 */

#ifndef ROUTE_H_
#define ROUTE_H_

/*
 * Routes to drive as a pair of  {Left, Right} Steps
 *  one Full Wheel-Turn are 200 FullSteps * 16 Parts  = 3200
 *  maximum are +-32700
 */
#define routeNumMax 2
#define routeStepMax 5

int16_t routeNum = 0;
int16_t routeStep = 0;
const int routeTol = 10;

int16_t route[routeNumMax][routeStepMax][2] =
{
	{		// route 1
			{ 000, 000 },
			{ 1200,1200 },		// forward
			{ 1600,-1600 },		// turn right
			{ -1200,1200 },		// turn left
			{ -1600,-1600 },	// backward
	},
	{		// route 2
			{ 000, 000 },
			{ 3200, 000 },
			{ 1200,1200 },
			{ 000, 3200 },
			{ -1200,-1200 },
	},

};


#endif /* ROUTE_H_ */



