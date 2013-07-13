// Elijah Freestone
// AOC2 1307
// Project 1
// July 9th, 2013

//
//  ViewController.m
//  AOC2Project1
//
//  Created by Elijah Freestone on 7/9/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    //Creating title text label
    guitarLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 30.0f)];
    if (guitarLabel != nil) {
        guitarLabel.backgroundColor = [UIColor whiteColor];
        guitarLabel.textColor = [UIColor blackColor];
        guitarLabel.textAlignment = NSTextAlignmentCenter;
        guitarLabel.text = @"Guitar Factory";
        [self.view addSubview:guitarLabel];
    }
    
    BCRichGuitar *newBCRich = (BCRichGuitar*)[GuitarFactory createNewGuitar:BCRICH];
    if (newBCRich != nil) {
        [newBCRich setGuitarYear:2003];
        [newBCRich setGuitarModel:@"Jr V Body Art"];
        [newBCRich setGuitarCondition:@"good"];
        [newBCRich setOriginalValue:300];
    }
    
    //Create BCRich Static label
    bcrichLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 40.0f, 300.0f, 50.0f)];
    if (bcrichLabel != nil) {
        bcrichLabel.backgroundColor = [UIColor whiteColor];
        bcrichLabel.textColor = [UIColor blackColor];
        bcrichLabel.textAlignment = NSTextAlignmentCenter;
        bcrichLabel.numberOfLines = 2;
        bcrichLabel.text = [NSString stringWithFormat:@"The %d BC Rich %@ model is in %@. Original value is $%d.", [newBCRich guitarYear],[newBCRich guitarModel], [newBCRich guitarCondition], [newBCRich originalValue]];
        [self.view addSubview:bcrichLabel];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
