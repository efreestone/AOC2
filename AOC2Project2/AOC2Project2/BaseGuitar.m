// Elijah Freestone
// AOC2 1307
// Project 2
// July 15th, 2013

//
//  BaseGuitar.m
//  AOC2Project2
//
//  Created by Elijah Freestone on 7/17/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import "BaseGuitar.h"

@implementation BaseGuitar

//Synthesize to create getter and setter methods for each property
@synthesize guitarYear, guitarModel, guitarCondition, originalValue;

//Initialize BaseGuitar, instantiating and set properties to default values
-(id)init {
    self = [super init];
    if (self != nil) {
        [self setGuitarYear:0];
        [self setGuitarModel:nil];
        //Set guitar condition. 1.0 = perfect. 0.50 = worn but functional. 0.00 = non-functional
        [self setGuitarCondition:0.00f];
        [self setOriginalValue:0];
        [self setIncreasedValue:0];
    }
    return self;
};

//Calculation/manipulation method to determine value of guitar
-(void)calcGuitarValue: (float) addedValue {
    [self setIncreasedValue:(self.originalValue)]; // / self.guitarCondition
    //NSLog(@"The guitars original value is $%d", self.increasedValue);
}

@end
