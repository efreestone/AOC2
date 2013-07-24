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
            NSLog(@"Add Event Button clicked");
            AddEventView *addEventView = [[AddEventView alloc] initWithNibName:@"AddEventView" bundle:nil];
            if (addEventView != nil) {
                [self presentViewController:addEventView animated:TRUE completion:nil];
            }
        }
    }
}

/*(buttonClicked.tag == 3) {
    SecondViewController *viewController = [[SecondViewController alloc] initWithNibName:@"SecondView" bundle:nil];
    if (viewController != nil) {
        [self presentViewController:viewController animated:TRUE completion:nil];
    }*/

- (void)viewDidLoad
{
    //Set background color
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    //Create "Date Planner" label
    /*datePlannerLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 30.0f)];
    if (datePlannerLabel != nil) {
        datePlannerLabel.backgroundColor = [UIColor whiteColor];
        datePlannerLabel.textColor = [UIColor blackColor];
        datePlannerLabel.textAlignment = NSTextAlignmentCenter;
        datePlannerLabel.text = @"Date Planner";
        [self.view addSubview:datePlannerLabel];
    }*/
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
