// Elijah Freestone
// AOC2 1307
// Project 2
// July 15th, 2013

//
//  ESPGuitar.h
//  AOC2Project2
//
//  Created by Elijah Freestone on 7/17/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import "BaseGuitar.h"

@interface ESPGuitar : BaseGuitar
{
    int guitarTop;
}

//Assign enum to the differnt types of maple guitar tops
typedef enum {
    QUILTMAPLE,
    FLAMEMAPLE,
    PLAINMAPLE
} guitarTop;

//Unique data members for top material of guitar and value added by the guitar top
@property int topMaterial;

@property float valueAdded;

@end