// Elijah Freestone
// AOC2 1307
// Project 1
// July 9th, 2013

//
//  SchecterGuitar.m
//  AOC2Project1
//
//  Created by Elijah Freestone on 7/12/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import "SchecterGuitar.h"

@implementation SchecterGuitar

//Customise init to set unique data members
-(id)init {
    self = [super init];
    if (self != nil) {
        [self setNumberOfStrings:7];
        [self setNumberOfFrets:22];
        [self setNumberOfNotes:0];
    }
    return self;
};

//Override base guitar value calculation to factor in unique data members
-(void)calcGuitarValue: (float) addedValue {
    [self setNumberOfNotes:(self.numberOfStrings * self.numberOfFrets)];
    NSLog(@"The guitar has %d available notes", self.numberOfNotes);
}

@end
