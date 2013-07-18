// Elijah Freestone
// AOC2 1307
// Project 2
// July 15th, 2013

//
//  BaseGuitar.h
//  AOC2Project2
//
//  Created by Elijah Freestone on 7/17/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseGuitar : NSObject

{
    int guitarBrandEnum;
}

//Assign enum to the different brands of guitars
typedef enum {
    BCRICH,
    ESP,
    SCHECTER
} guitarBrandEnum;

//Data members for year (int), guitar model (string), guitar condition (string), and original value (int)
@property int guitarYear;
//"Copy" added to get rid of warning about default "assign". Not %100 that copy is the most appropriate for this situation though.
@property (copy) NSString *guitarModel;

@property float guitarCondition;

@property int originalValue;

@property int increasedValue;

//Methods

//Initialization
-(id)init;

//Calculation/manipulation method to determine value of guitar
-(void)calcGuitarValue: (float) addedValue;

@end
