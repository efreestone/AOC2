// Elijah Freestone
// AOC2 1307
// Project 2
// July 15th, 2013

//
//  ViewController.m
//  AOC2Project2
//
//  Created by Elijah Freestone on 7/17/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import "ViewController.h"
//Import Second ViewController
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//Segment function to change background color
-(IBAction)onSegment:(id)sender {
    //Cast segment control to segmentControl
    UISegmentedControl *segControl = (UISegmentedControl *)sender;
    if (segControl != nil) {
        int selectedSegment = segControl.selectedSegmentIndex;
        //NSLog(@"Selected index %d", selectedSegment);
        if (selectedSegment == 0) {
            self.view.backgroundColor = [UIColor cyanColor];
        } else if (selectedSegment == 1) {
            self.view.backgroundColor = [UIColor yellowColor];
        } else if (selectedSegment == 2) {
            self.view.backgroundColor = [UIColor redColor];
        }
    }
}

//onClick function for buttons with enabled toggle for logic of onCalculate. Also adds second view via info btn
-(IBAction)onClick:(id)sender {
    //Cast send into a UIButton
    UIButton *buttonClicked = (UIButton *)sender;
    
    if (buttonClicked != nil) {
        if (buttonClicked.tag == 0) {
            bcrichButton.enabled = false;
            espButton.enabled = true;
            schecterButton.enabled = true;
            
            //Create isntance of BCRichGuitar class
            BCRichGuitar *newBCRich = (BCRichGuitar*)[GuitarFactory createNewGuitar:BCRICH];
            if (newBCRich != nil) {
                [newBCRich setGuitarYear:2003];
                [newBCRich setGuitarModel:@"Jr V Body Art"];
                guitarDisplay.text = [NSString stringWithFormat:@"%d BC Rich %@.", [newBCRich guitarYear],[newBCRich guitarModel]];
            }
        } else if (buttonClicked.tag == 1) {
            bcrichButton.enabled = true;
            espButton.enabled = false;
            schecterButton.enabled = true;
            
            //Create an instance of ESPGuitar class
            ESPGuitar *newESP = (ESPGuitar*)[GuitarFactory createNewGuitar:ESP];
            if (newESP != nil) {
                [newESP setGuitarYear:2010];
                [newESP setGuitarModel:@"LTD H-1001FM"];
                guitarDisplay.text = [NSString stringWithFormat:@"%d ESP %@", [newESP guitarYear], [newESP guitarModel]];
            }
        } else if (buttonClicked.tag == 2) {
            bcrichButton.enabled = true;
            espButton.enabled = true;
            schecterButton.enabled = false;
            
            //Create an instance of SchecterGuitar class
            SchecterGuitar *newSchecter = (SchecterGuitar*)[GuitarFactory createNewGuitar:SCHECTER];
            if (newSchecter != nil) {
                [newSchecter setGuitarYear:2008];
                [newSchecter setGuitarModel:@"Damien-7"];
                guitarDisplay.text = [NSString stringWithFormat:@"%d Schecter %@", [newSchecter guitarYear], [newSchecter guitarModel]];
            }
        } else if (buttonClicked.tag == 3) {
            SecondViewController *viewController = [[SecondViewController alloc] initWithNibName:@"SecondView" bundle:nil];
            if (viewController != nil) {
                [self presentViewController:viewController animated:TRUE completion:nil];
            }
        }
    }
}

//onChange function for stepper control
-(IBAction)onChange:(id)sender {
    //Cast stepper to stepControl
    UIStepper *stepControl = (UIStepper *) sender;
    if (stepControl != nil) {
        int currentValue = stepControl.value;
        stepperLabel.text = [NSString stringWithFormat:@"Quantity = %d", currentValue];
    }
}

-(IBAction)onCalculate:(id)sender {
    UIButton *buttonCalc = (UIButton *)sender;
    int currentStep = stepperControl.value;
    
    if (buttonCalc != nil) {
        if (bcrichButton.enabled == false) {
            //Create isntance of BCRichGuitar class
            BCRichGuitar *newBCRich = (BCRichGuitar*)[GuitarFactory createNewGuitar:BCRICH];
            if (newBCRich != nil) {
                [newBCRich setGuitarCondition:0.75f];
                [newBCRich setOriginalValue:300];
                [newBCRich calcGuitarValue:[newBCRich guitarCondition]];
                //Create new int to capture bcrich math and stepper
                int bcrTotalValue = newBCRich.increasedValue * currentStep;
                //Display total in guitarDisplay
                guitarDisplay.text = [NSString stringWithFormat:@"%d BC Rich. Total value is $%d.", currentStep, bcrTotalValue];
            }
        } else if (espButton.enabled == false) {
            //Create an instance of ESPGuitar class
            ESPGuitar *newESP = (ESPGuitar*)[GuitarFactory createNewGuitar:ESP];
             if (newESP != nil) {
                 [newESP setGuitarCondition:0.95f];
                 [newESP setOriginalValue:1000];
                 [newESP setTopMaterial:FLAMEMAPLE];
                 [newESP calcGuitarValue:[newESP guitarCondition]];
                 //Create int to capture esp math and stepper
                 int espTotalValue = newESP.valueAdded * currentStep;
                 //Display total in guitarDisplay
                 guitarDisplay.text = [NSString stringWithFormat:@"%d ESP. Total value added is $%d.", currentStep, espTotalValue];
             }
        } else if (schecterButton.enabled == false) {
            //Create an instance of SchecterGuitar class
            SchecterGuitar *newSchecter = (SchecterGuitar*)[GuitarFactory createNewGuitar:SCHECTER];
             if (newSchecter != nil) {
                 [newSchecter setGuitarYear:2008];
                 [newSchecter setGuitarModel:@"Damien-7"];
                 [newSchecter setGuitarCondition:0.85f];
                 [newSchecter setOriginalValue:500];
                 [newSchecter calcGuitarValue:[newSchecter numberOfFrets]];
                 //NSLog(@"%d", [newSchecter numberOfNotes]);
                 //Create int to capture schecter math and stepper
                 int schTotalValue = newSchecter.numberOfNotes * currentStep;
                 //Dispaly total in guitarDisplay
                 guitarDisplay.text = [NSString stringWithFormat:@"%d Schecter. There are %d available notes.", currentStep, schTotalValue];
             }
        } else {
            guitarDisplay.text = [NSString stringWithFormat:@"Please select a guitar brand"];
        }
    }
}

- (void)viewDidLoad
{
    //Set initial background color
    self.view.backgroundColor = [UIColor darkGrayColor];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
