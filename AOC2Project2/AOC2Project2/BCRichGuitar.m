// Elijah Freestone
// AOC2 1307
// Project 2
// July 15th, 2013

//
//  BCRichGuitar.m
//  AOC2Project2
//
//  Created by Elijah Freestone on 7/17/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import "BCRichGuitar.h"

@implementation BCRichGuitar

//Synthesize to create getter and setter methods
@synthesize numberMade, yearsOwned;

//Customize init to set unique data members
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
