//From BCRichGuitar.m ====
// Elijah Freestone
// AOC2 1307
// Project 1
// July 9th, 2013

//
//  BCRichGuitar.m
//  AOC2Project1
//
//  Created by Elijah Freestone on 7/12/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import "BCRichGuitar.h"

@implementation BCRichGuitar

@synthesize numberMade, yearsOwned;

//Customise init to set unique data members
-(id)init {
    self = [super init];
    if (self != nil) {
        [self setNumberMade:3000];
        [self setYearsOwned:11];
    }
    return self;
};

//Override base guitar value calculation to factor in unique data members
-(void)calcGuitarValue { //: (int) addedValue
    [self setIncreasedValue:(self.numberMade + self.yearsOwned)];
    //int newAddedValue = self.originalValue;
    NSLog(@"The guitars original value is $%d", self.increasedValue);
    //return newAddedValue;
}

/*-(void)calcGuitarValue: (float) addedValue {
    [self setIncreasedValue:(self.originalValue / guitarCondition)];
    NSLog(@"The guitars original value is $%d", originalValue);
    //return newAddedValue;
}*/


@end
