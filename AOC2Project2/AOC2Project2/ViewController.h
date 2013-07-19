// Elijah Freestone
// AOC2 1307
// Project 2
// July 15th, 2013

//
//  ViewController.h
//  AOC2Project2
//
//  Created by Elijah Freestone on 7/17/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import <UIKit/UIKit.h>
//Import factory class
#import "GuitarFactory.h"

@interface ViewController : UIViewController

//Declare labels. 1 is static, 2 is dynamic with calculation
{
    //Declare stepper label
    IBOutlet UILabel *stepperLabel;
    //Declare text field
    IBOutlet UITextField *guitarDisplay;
    //Declare buttons
    IBOutlet UIButton *bcrichButton, *espButton, *schecterButton, *totalButton;
    //Declare stepper
    IBOutlet UIStepper *stepperControl;
    //Declare segment buttons
    IBOutlet UISegmentedControl *segmentControl;
}
//Declare onClick function for all button clicks except "Find Total"
-(IBAction)onClick:(id)sender;
//Declare onChange function for stepper
-(IBAction)onChange:(id)sender;
//Declare onSegment function or segment buttons to change color of background
-(IBAction)onSegment:(id)sender;
//Declare onCalculate for "Find Total" button
-(IBAction)onCalculate:(id)sender;

@end
