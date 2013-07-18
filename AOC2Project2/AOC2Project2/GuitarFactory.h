// Elijah Freestone
// AOC2 1307
// Project 2
// July 15th, 2013

//
//  GuitarFactory.h
//  AOC2Project2
//
//  Created by Elijah Freestone on 7/17/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import <Foundation/Foundation.h>
//Import BaseGuitar class
#import "BaseGuitar.h"
//Import BCRich class
#import "BCRichGuitar.h"
//Import ESP class
#import "ESPGuitar.h"
//Import Schecter class
#import "SchecterGuitar.h"

@interface GuitarFactory : NSObject

//Static method
+(BaseGuitar *) createNewGuitar: (int)guitarBrand;

@end
