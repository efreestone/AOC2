// Elijah Freestone
// AOC2 1307
// Project 3
// July 22nd, 2013

//
//  ViewController.h
//  AOC2Project3
//
//  Created by Elijah Freestone on 7/22/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import <UIKit/UIKit.h>
//Import Add Event View
#import "AddEventView.h"

@interface ViewController : UIViewController <AddEventViewDelegate>
{
    //Declare "Add Event" button
    IBOutlet UIButton *addEventBtn;
    //Declare text view
    IBOutlet UITextView *eventsView;
}

//Declare onClick function to add second view
-(IBAction)onClick:(id)sender;

@end
