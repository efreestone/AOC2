// Elijah Freestone
// AOC2 1307
// Project 1
// July 9th, 2013

//
//  GuitarFactory.m
//  AOC2Project1
//
//  Created by Elijah Freestone on 7/12/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import "GuitarFactory.h"

@implementation GuitarFactory

+(BaseGuitar *) createNewGuitar:(int)guitarBrand {
    //If Guitar brand is BC Rich
    if (guitarBrand == BCRICH) {
        return [[BCRichGuitar alloc] init];
        //else if Guitar brand is ESP
    } else if (guitarBrand == ESP) {
        return [[ESPGuitar alloc] init];
        //else if Guitar brand is Schecter
    } else if (guitarBrand == SCHECTER) {
        return [[SchecterGuitar alloc] init];
    } else {
        return nil;
    }
};

@end
