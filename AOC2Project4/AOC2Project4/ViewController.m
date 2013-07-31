// Elijah Freestone
// AOC2 1307
// Project 3
// July 22nd, 2013

//
//  ViewController.m
//  AOC2Project4
//
//  Created by Elijah Freestone on 7/27/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import "ViewController.h"
//Import EventSingleton
#import "EventSingleton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Call instance of static singleton method
    /*EventSingleton *eventSingleton = [EventSingleton GetInstance];
    [eventSingleton displayEvents];*/
    
    //Call instance of singleton (Lazy initialization, singleton doesn't get created until displayEvent is called)
    [[EventSingleton GetInstance] displayEvents];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
