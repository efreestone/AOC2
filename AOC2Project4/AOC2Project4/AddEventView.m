// Elijah Freestone
// AOC2 1307
// Project 4
// July 27nd, 2013

//
//  AddEventView.m
//  AOC2Project3
//
//  Created by Elijah Freestone on 7/31/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import "AddEventView.h"
//Import singleton
#import "EventSingleton.h"

@interface AddEventView ()

@end

@implementation AddEventView

//@synthesize eventDelegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    //Cast right swipe and allocate
    leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action: @selector(onSwipe:)];
    //Hook in direction of swipe
    leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    //Add gesture recognizer to label
    [leftSwipeLabel addGestureRecognizer:leftSwipe];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//onSwipe function to grab swipe and change view to add event
-(void)onSwipe:(UISwipeGestureRecognizer *)swipeRecognizer {
    if (swipeRecognizer.direction == UISwipeGestureRecognizerDirectionLeft) {
        NSLog(@"left swipe");
        //Cast text field entry into NSString
        NSString *eventTextEntered = eventTextField.text;
        //Check that an event was entered in the text field
        if (eventTextEntered.length > 0) {
            //Grab date from picker and format. Doesn't work correctly from within onDateChange, especially if no date picked
            NSDate *eventDate = eventDatePicker.date;
            if (eventDate != nil) {
                //Format date for display and cast into formattedDate
                NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
                if (dateFormatter != nil) {
                    [dateFormatter setDateFormat:@"MMM dd, yyyy hh:mm:ss a"];
                    formattedDate = [dateFormatter stringFromDate:eventDate];
                }
                //NSLog(@"date = %@", formattedDate);
            }
            //Create string to be displayed. \n \n at the end breaks to new line twice to provide one line gap between events
            newEventDetails = [NSString stringWithFormat:@"New Event: %@ \n %@ \n \n" , eventTextEntered, formattedDate];
            //if (eventDelegate != nil) {
                //Call to ViewController to save text field and date. Passed along via singleton
            [[EventSingleton GetInstance] displayEvents:newEventDetails];
                //[eventDelegate EventSaved:newEventDetails];
                NSLog(@"%@", newEventDetails);
            //}
            //Close Add Event View and return to primary view
            [self dismissViewControllerAnimated:TRUE completion:nil];
        } else {
            //Provide alert that event description is required. Changes text of "Event Description"
            eventLabel.text = @"Please enter an event";
            eventLabel.textColor = [UIColor redColor];
        }
        //Close Add Event View and return to primary view
        //[self dismissViewControllerAnimated:TRUE completion:nil];
    }
}

//onDateChange function to grab date from picker
-(IBAction)onDateChange:(id)sender {
    //Cast date picker
    UIDatePicker *datePicker = (UIDatePicker *)sender;
    //Set minimum date to current date
    NSDate *currentDate = [NSDate date];
    [datePicker setMinimumDate: currentDate];
}

//saveEvent function to save event and close second view
/*-(IBAction)saveEvent:(id)sender {
    //Cast text field entry into NSString
    NSString *eventTextEntered = eventTextField.text;
    //Check that an event was entered in the text field
    if (eventTextEntered.length > 0) {
        //Grab date from picker and format. Doesn't work correctly from within onDateChange, especially if no date picked
        //if (datePicker != nil) { //Checking this makes default date null
        NSDate *eventDate = eventDatePicker.date;
        if (eventDate != nil) {
            //Format date for display and cast into formattedDate
            NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
            if (dateFormatter != nil) {
                [dateFormatter setDateFormat:@"MMM dd, yyyy hh:mm:ss a"];
                formattedDate = [dateFormatter stringFromDate:eventDate];
            }
            //NSLog(@"date = %@", formattedDate);
            //}
        }
        //Create string to be displayed. \n \n at the end breaks to new line twice to provide one line gap between events
        newEventDetails = [NSString stringWithFormat:@"New Event: %@ \n %@ \n \n" , eventTextEntered, formattedDate];
        //if (eventDelegate != nil) {
            //Call to ViewController to save text field and date. Passed along via delegate
          //  [eventDelegate EventSaved:newEventDetails];
            //NSLog(@"%@", newEventDetails);
        //}
        //Close Add Event View and return to primary view
        [self dismissViewControllerAnimated:TRUE completion:nil];
    } else {
        //Provide alert that event description is required. Changes text of "Event Description"
        eventLabel.text = @"Please enter an event";
        eventLabel.textColor = [UIColor redColor];
    }
}*/

//closeKeyboard closes the keyboard
-(IBAction)closeKeyboard:(id)sender {
    //NSLog(@"Close Keyboard pressed");
    //Resign the first responder for eventTextField. The keyboard in this case
    [eventTextField resignFirstResponder];
}

@end
