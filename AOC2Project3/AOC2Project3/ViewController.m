// Elijah Freestone
// AOC2 1307
// Project 3
// July 22nd, 2013

//
//  ViewController.m
//  AOC2Project3
//
//  Created by Elijah Freestone on 7/22/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import "ViewController.h"
//Import second view controller (AddEventView)
#import "AddEventView.h"

@interface ViewController ()

@end

@implementation ViewController

//onClick function for all buttons
-(IBAction)onClick:(id)sender {
    //Cast send into a UIButton
    UIButton *buttonClicked = (UIButton *)sender;
    
    if (buttonClicked != nil) {
        //Add Event button
        if (buttonClicked.tag == 0) {
            //NSLog(@"Add Event Button clicked");
            AddEventView *addEventView = [[AddEventView alloc] initWithNibName:@"AddEventView" bundle:nil];
            if (addEventView != nil) {
                //Set eventDelegate to self
                addEventView.eventDelegate = self;
                //Slide second view in
                [self presentViewController:addEventView animated:TRUE completion:nil];
            }
        }
    }
}

//EventSaved function to grab text field from eventDelegate and display in the main text view
-(void)EventSaved: (NSString *)eventDetails {
    if ([eventsView.text isEqualToString:@"Events will go here."]) {
        //Clear out default text
        eventsView.text = @"";
        eventsView.text = eventDetails;
    } else {
        //If events exist, append new event without clearing anything out of the text view
        eventsView.text = [eventsView.text stringByAppendingString:eventDetails];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
