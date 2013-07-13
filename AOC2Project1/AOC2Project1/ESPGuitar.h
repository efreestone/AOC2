// Elijah Freestone
// AOC2 1307
// Project 1
// July 9th, 2013

//
//  ESPGuitar.h
//  AOC2Project1
//
//  Created by Elijah Freestone on 7/12/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import "BaseGuitar.h"

@interface ESPGuitar : BaseGuitar
{
    int guitarTop;
}

typedef enum {
    QUILTMAPLE,
    FLAMEMAPLE,
    PLAINMAPLE
} guitarTop;

//Unique data members for top material of guitar and value added by the guitar top
@property int topMaterial;

@property float valueAdded;

@end
