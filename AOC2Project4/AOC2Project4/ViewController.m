// Elijah Freestone
// AOC2 1307
// Project 4
// July 27nd, 2013

//
//  ViewController.m
//  AOC2Project4
//
//  Created by Elijah Freestone on 7/27/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import "ViewController.h"
//Import second view controller (AddEventView)
#import "AddEventView.h"
//Import EventSingleton
#import "EventSingleton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Cast right swipe and allocate
    rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action: @selector(onSwipe:)];
    //Hook in direction of swipe
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    //Add gesture recognizer to label
    [rightSwipeLabel addGestureRecognizer:rightSwipe];
    
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

//onSwipe function to grab swipe and change view to add event
-(void)onSwipe:(UISwipeGestureRecognizer *)swipeRecognizer {
    if (swipeRecognizer.direction == UISwipeGestureRecognizerDirectionRight) {
        AddEventView *addEventView = [[AddEventView alloc] initWithNibName:@"AddEventView" bundle:nil];
        if (addEventView != nil) {
            //Slide second view in
            [self presentViewController:addEventView animated:TRUE completion:nil];
        }
    }
}

@end
