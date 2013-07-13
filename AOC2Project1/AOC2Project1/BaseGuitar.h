// Elijah Freestone
// AOC2 1307
// Project 1
// July 9th, 2013

//
//  BaseGuitar.h
//  AOC2Project1
//
//  Created by Elijah Freestone on 7/12/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseGuitar : NSObject

{
    int guitarBrandEnum;
}

typedef enum {
    BCRICH,
    ESP,
    SCHECTER
} guitarBrandEnum;

//Data members for year (int), guitar model (string), guitar condition (string), and original value (int) 
@property int guitarYear;

@property NSString *guitarModel;

@property NSString *guitarCondition;

@property int originalValue;

//Methods

//Initialization
-(id)init;

//Calculation/manipulation method to determine value of guitar
-(void)calcGuitarValue;

@end
