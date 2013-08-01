// Elijah Freestone
// AOC2 1307
// Project 4
// July 27nd, 2013

//
//  EventSingleton.m
//  AOC2Project4
//
//  Created by Elijah Freestone on 7/30/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import "EventSingleton.h"

@implementation EventSingleton

@synthesize savedEventLoaded;

//Set static method for singleton instance
static EventSingleton *_instance = nil;

//Create singleton instance
+(EventSingleton *)GetInstance {
    //
    @synchronized(self) {
        if (_instance == nil) {
            //Allocate and initialize singleton
            _instance = [[self alloc] init];
            NSLog(@"Singleton instance loaded");
        }
    return _instance;
    }
}

//This was - in singleton video. Changing to + removes warning but I'm not sure why yet
+(id)alloc {
    
    _instance = [super alloc];
    
    return _instance;
}

//Initialize singleton with NSUserDefaults
-(id)init {
    if (self = [super init]) {
        NSUserDefaults *defaultEvents = [NSUserDefaults standardUserDefaults];
        if ([defaultEvents objectForKey:@"event"] != nil) {
            self.savedEventLoaded = [defaultEvents objectForKey:@"event"];
            NSLog(@"Singleton init IF hit");
        } else {
            self.savedEventLoaded = @"";
            NSLog(@"Singleton init ELSE hit");
        }
    }
    return self;
}

//Instance method to give both views access to singleton
-(void)displayEvents:(NSString *)newEventDetails {
    NSString *savedEvents = self.savedEventLoaded;
    if ([savedEvents isEqualToString:@""]) {
        NSString *modifiedEvents = [savedEvents stringByAppendingFormat:@"%@", newEventDetails];
        self.savedEventLoaded = modifiedEvents;
        NSLog(@"From inside displayEvent IF %@", modifiedEvents);
    } else {
        NSString *modifiedEvents = [NSString stringWithFormat:@"%@", newEventDetails];
        self.savedEventLoaded = modifiedEvents;
        NSLog(@"From inside displayEvent ELSE %@", modifiedEvents);
    }
}

@end
