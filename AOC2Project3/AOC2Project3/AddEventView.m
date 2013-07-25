// Elijah Freestone
// AOC2 1307
// Project 3
// July 22nd, 2013

//
//  AddEventView.m
//  AOC2Project3
//
//  Created by Elijah Freestone on 7/23/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import "AddEventView.h"

@interface AddEventView ()

@end

@implementation AddEventView

@synthesize eventDelegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //Nil out custom delegate
        eventDelegate = nil;
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onDateChange:(id)sender {
    //Cast date picker
    UIDatePicker *datePicker = (UIDatePicker *)sender;
    if (datePicker != nil) {
        NSDate *eventDate = datePicker.date;
        NSLog(@"date = %@", eventDate);
    }
}

//saveEvent function to save event and close second view
-(IBAction)saveEvent:(id)sender {
    //Check that an event was entered in the text field
    if (eventTextField.text.length > 0) {
        if (eventDelegate != nil) {
            //Call to ViewController to save text field
            [eventDelegate EventSaved:eventTextField.text];
            //NSLog(@"%@", eventTextField.text);
        }
        //Close Add Event View and return to primary view
        [self dismissViewControllerAnimated:TRUE completion:nil];
    } else {
        //Provide alert that event description is required
        eventLabel.text = @"Please enter an event";
        eventLabel.textColor = [UIColor redColor];
    }
}

//closeKeyboard closes the keyboard
-(IBAction)closeKeyboard:(id)sender {
    //NSLog(@"Close Keyboard pressed");
    //Resign the first responder for eventTextField. The keyboard in this case
    [eventTextField resignFirstResponder];
}

@end
