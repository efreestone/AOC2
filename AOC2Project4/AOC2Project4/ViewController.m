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
//Import singleton 
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
    
    //EventSingleton *eventSingleton = [EventSingleton GetInstance];
    //[eventSingleton GetInstance];
    
    //Call instance of singleton (Lazy initialization, singleton doesn't get created until displayEvent is called)
    //[[EventSingleton GetInstance] displayEvents];
    
    //eventsView.text = [EventSingleton GetInstance].savedEventLoaded;
    
    // Check if default saved events exist
    NSUserDefaults *defaultEvents = [NSUserDefaults standardUserDefaults];
    if([defaultEvents objectForKey:@"event"] != nil) {
        eventsView.text = [defaultEvents objectForKey:@"event"];
        NSLog(@"NSUserDefaults are working.");
    } else {
        NSLog(@"NSUserDefaults arent working");
    }
    
    //eventsView.text = [EventSingleton GetInstance].savedEventLoaded;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

//Added this based on a thread on stackOverflow. 
-(void)viewWillAppear:(BOOL)animated
{
    eventsView.text = [EventSingleton GetInstance].savedEventLoaded;
    NSLog(@"viewWillAppear hit");
    [super viewWillAppear:animated];
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

//EventSaved function to grab text field from eventDelegate and display in the main text view
-(void)EventSaved: (NSString *)eventDetails {
    if ([eventsView.text isEqualToString:@"Events will go here."]) {
        //Clear out default text
        eventsView.text = @"";
        eventsView.text = eventDetails;
        NSLog(@"EventSaved hit");
    } else {
        //If events exist, append new event without clearing anything out of the text view
        eventsView.text = [eventsView.text stringByAppendingString:eventDetails];
        NSLog(@"EventSaved hit");
    }
}

-(IBAction)onClick:(id)sender {
    NSLog(@"Event saved as default data");
    //Set event details as NSUserDefault to be displayed the next launch
    NSUserDefaults *defaultEvents = [NSUserDefaults standardUserDefaults];
    if (defaultEvents != nil) {
        //Set key of new event with NSMutableDictionary
        [defaultEvents setObject:eventsView.text forKey:@"event"];
        //Save event details to the device
        [defaultEvents synchronize];
        UIAlertView *saveSuccessful = [[UIAlertView alloc] initWithTitle:@"Saved!" message:@"Your events will save upon exiting application." delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [saveSuccessful show];
    } else {
        UIAlertView *noSave = [[UIAlertView alloc] initWithTitle:@"Error" message:@"There are no events to be saved" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [noSave show];
    }
}

@end
