// Elijah Freestone
// AOC2 1307
// Project 4
// July 27nd, 2013

//
//  AddEventView.h
//  AOC2Project3
//
//  Created by Elijah Freestone on 7/31/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddEventView : UIViewController
{
    //Declare left swipe label
    IBOutlet UILabel *leftSwipeLabel;
    //Declare event text field
    IBOutlet UITextField *eventTextField;
    //Declare date picker
    IBOutlet UIDatePicker *eventDatePicker;
    //Declare event label to be used for displaying error message
    IBOutlet UILabel *eventLabel;
    
    //Declare swipe gesture recognizer
    UISwipeGestureRecognizer *leftSwipe;
    
    //Declare id for add event view delegate
    //id<AddEventViewDelegate> eventDelegate;
    
    //Declare formatted date
    NSString *formattedDate;
    //Declare full string with event text and date
    NSString *newEventDetails;
}

//Declare onSwipe function
-(void)onSwipe:(UISwipeGestureRecognizer *)swipeRecognizer;

//Declare onDateChange to grab date selected with picker
-(IBAction)onDateChange:(id)sender;

//Declare close keyboard function
-(IBAction)closeKeyboard:(id)sender;

@end


