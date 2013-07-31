//
//  EventSingleton.h
//  AOC2Project4
//
//  Created by Elijah Freestone on 7/30/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EventSingleton : NSObject

//Declare static method
+(EventSingleton *)GetInstance;

//Declare instance method
-(void)displayEvents;

@end
