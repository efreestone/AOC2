// Elijah Freestone
// AOC2 1307
// Project 3
// July 22nd, 2013

//
//  EventSingleton.m
//  AOC2Project4
//
//  Created by Elijah Freestone on 7/30/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import "EventSingleton.h"

@implementation EventSingleton

//Set static method for singleton instance
static EventSingleton *_instance = nil;

//Create singleton instance
+(EventSingleton *)GetInstance {
    if (_instance == nil) {
        //Allocate and initialize singleton
        [[self alloc] init];
        
        return _instance;
    }
}

-(id)alloc {
    
    _instance = [super alloc];
    
    return _instance;
}

-(id)init {
    if (self = [super init]) {
        
    }
    return self;
}

-(void)displayEvents {

}

@end
