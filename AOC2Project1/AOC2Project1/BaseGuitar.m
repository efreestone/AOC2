// Elijah Freestone
// AOC2 1307
// Project 1
// July 9th, 2013

//
//  BaseGuitar.m
//  AOC2Project1
//
//  Created by Elijah Freestone on 7/12/13.
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
        [self setGuitarCondition:nil];
        [self setOriginalValue:0];
    }
    return self;
};

//Calculation/manipulation method to determine value of guitar
-(void)calcGuitarValue { //: (int) addedValue 
    NSLog(@"The guitars original value is $%d", originalValue);
}

/*{
    int guitarNumber;
    NSString *guitarModel;
}*/

@end
