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
    UILabel *guitarLabel, *bcrichLabel1, *bcrichLabel2, *espLabel1, *espLabel2, *schecterLabel1, *schecterLabel2;
    
    IBOutlet UILabel *testLabel;
    IBOutlet UIButton *testButton, *testButton2;
}

-(IBAction)onClick:(id)sender;

@end
