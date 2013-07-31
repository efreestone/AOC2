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

@protocol AddEventViewDelegate <NSObject>

//Custom delegate to save text field on second view
@required
-(void)EventSaved: (NSString *)eventDetails;

@end

@interface AddEventView : UIViewController <UITextFieldDelegate>
{
    //Declare event text field
    IBOutlet UITextField *eventTextField;
    //Declare date picker
    IBOutlet UIDatePicker *eventDatePicker;
    //Declare event label to be used for displaying error message
    IBOutlet UILabel *eventLabel;
    
    //Declare id for add event view delegate
    id<AddEventViewDelegate> eventDelegate;
    
    //Declare formatted date
    NSString *formattedDate;
    //Declare full string with event text and date
    NSString *newEventDetails;
}

//Declare onDateChange to grab date selected with picker
-(IBAction)onDateChange:(id)sender;

//Declare saveEvent for closing second view and saving input data
-(IBAction)saveEvent:(id)sender;

//Declare close keyboard function
-(IBAction)closeKeyboard:(id)sender;

//Allow to set delegate from outside
@property (strong) id<AddEventViewDelegate> eventDelegate;

@end


