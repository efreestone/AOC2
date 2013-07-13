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
        [self setNumberMade:4000];
        [self setYearsOwned:10];
    }
    return self;
};

//Override base guitar value calculation to factor in unique data members
-(void)calcGuitarValue: (float) addedValue {
    [self setIncreasedValue:((self.numberMade / self.yearsOwned) + self.originalValue)];
    //NSLog(@"The guitar is currently valued at $%d", self.increasedValue);
}

@end
