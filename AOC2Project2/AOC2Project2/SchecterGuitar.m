// Elijah Freestone
// AOC2 1307
// Project 2
// July 15th, 2013

//
//  SchecterGuitar.m
//  AOC2Project2
//
//  Created by Elijah Freestone on 7/17/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import "SchecterGuitar.h"

@implementation SchecterGuitar

//Synthesize to create getter and setter methods
@synthesize numberOfStrings, numberOfFrets, numberOfNotes;

//Customise init to set unique data members
-(id)init {
    self = [super init];
    if (self != nil) {
        [self setNumberOfStrings:7];
        [self setNumberOfFrets:24];
        [self setNumberOfNotes:0];
    }
    return self;
};

//Override base guitar value calculation to factor in unique data members. This will display number of notes available instead of value of the guitar
-(void)calcGuitarValue: (float) addedValue {
    [self setNumberOfNotes:(self.numberOfStrings * self.numberOfFrets)];
    //NSLog(@"The guitar has %d available notes", self.numberOfNotes);
}

@end
