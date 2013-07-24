// Elijah Freestone
// AOC2 1307
// Project 3
// July 22nd, 2013

//
//  AddEventView.h
//  AOC2Project3
//
//  Created by Elijah Freestone on 7/23/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddEventView : UIViewController
{
    //Declare event text field
    IBOutlet UITextField *eventTextField;
    //Declare date picker
    IBOutlet UIDatePicker *eventDate;
}

//Declare onClose for closing second view
-(IBAction)saveEvent:(id)sender;

//Declare close keyboard function
-(IBAction)closeKeyboard:(id)sender;

@end
