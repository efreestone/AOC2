// Elijah Freestone
// AOC2 1307
// Project 2
// July 15th, 2013

//
//  ESPGuitar.m
//  AOC2Project2
//
//  Created by Elijah Freestone on 7/17/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import "ESPGuitar.h"

@implementation ESPGuitar

//Synthesize to create getter and setter methods
@synthesize topMaterial, valueAdded;

//Custumize init for factoring added value of a maple guitar top
-(id)init {
    self = [super init];
    if (self != nil) {
        [self setOriginalValue:0];
        [self setTopMaterial:QUILTMAPLE];
        [self setValueAdded:0.00f];
        //NSLog(@"yay it worked!!");
    }
    return self;
}

//Overridding calculation to factor in guitar top material in value. This displays the added value of the top instead of the total value of the guitar.
-(void)calcGuitarValue: (float) addedValue {
    if (topMaterial == QUILTMAPLE) {
        [self setOriginalValue:1350];
        [self setValueAdded:(self.originalValue * 0.15f)];
        //NSLog(@"The added value of the top is %f", valueAdded);
    } else if (topMaterial == FLAMEMAPLE) {
        [self setOriginalValue:1200];
        [self setValueAdded:(self.originalValue * 0.10f)];
        //NSLog(@"The added value of the top is %f", valueAdded);
    } else if (topMaterial == PLAINMAPLE) {
        [self setOriginalValue:1050];
        [self setValueAdded:(self.originalValue * 0.05f)];
        //NSLog(@"The added value of the top is %f", valueAdded);
    } else {
        NSLog(@"The guitar doesn't have a maple top so there is no added value");
    }
}

@end
