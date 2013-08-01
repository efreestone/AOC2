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
    
    //Call instance of singleton (Lazy initialization, singleton doesn't get created until displayEvent is called)
    //[[EventSingleton GetInstance] displayEvents];
    
    //This is called in viewWillLoad to fix new events not displaying
    //eventsView.text = [EventSingleton GetInstance].savedEventLoaded;
    
    // Check if default saved events exist
    NSUserDefaults *defaultEvents = [NSUserDefaults standardUserDefaults];
    if([defaultEvents objectForKey:@"event"] != nil) {
        eventsView.text = [defaultEvents objectForKey:@"event"];
        NSLog(@"NSUserDefaults are working. %@", defaultEvents);
    } else {
        eventsView.text = @"Events will go here.";
        NSLog(@"NSUserDefaults arent working. %@", defaultEvents);
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

//Added this based on a thread on stackOverflow. Adds event details just entered to eventView 
-(void)viewWillAppear:(BOOL)animated
{
    //if (![[EventSingleton GetInstance].savedEventLoaded isEqual: @""]) {
        //eventsView.text = @"Events will go here.";
    //} else {
        eventsView.text = [EventSingleton GetInstance].savedEventLoaded;
        //NSLog(@"viewWillAppear hit");
    //}
    
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

-(IBAction)onClick:(id)sender {
    //Cast clear and save into a UIButton
    UIButton *buttonClicked = (UIButton *)sender;
        
    if (buttonClicked != nil) {
        //Save button
        if (buttonClicked.tag == 0) {
            //Set event details as NSUserDefault to be displayed the next launch
            NSUserDefaults *defaultEvents = [NSUserDefaults standardUserDefaults];
            if (defaultEvents != nil) {
                //Set key of new event with NSMutableDictionary
                [defaultEvents setObject:eventsView.text forKey:@"event"];
                //Save event details to the device
                [defaultEvents synchronize];
                UIAlertView *saveSuccessful = [[UIAlertView alloc] initWithTitle:@"Saved!" message:@"Your events will save after exiting the application." delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
                [saveSuccessful show];
                //NSLog(@"Event saved as default data");
            } else {
                UIAlertView *noSave = [[UIAlertView alloc] initWithTitle:@"Error" message:@"There are no events to be saved" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
                [noSave show];
            }
        //Clear button
        } else if (buttonClicked.tag == 1) {
            //Clear out all saved events from NSUserDefaults
            NSUserDefaults *currentDefaultEvents = [NSUserDefaults standardUserDefaults];
            [currentDefaultEvents removeObjectForKey:@"event"];
            //Make sure cleared NSUserDefaults is resaved
            [currentDefaultEvents synchronize];
            UIAlertView *clearSuccessful = [[UIAlertView alloc] initWithTitle:@"Saved!" message:@"Your events will clear after exiting the application." delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
            [clearSuccessful show];
            eventsView.text = @"Events will go here.";
        }
    }
}

@end
