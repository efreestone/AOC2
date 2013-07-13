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
        [newBCRich setGuitarCondition:0.75f];
        [newBCRich setOriginalValue:300];
        //float newConditionValue = [newBCRich setGuitarCondition:0.25f];
        [newBCRich calcGuitarValue:[newBCRich guitarCondition]];
        //[newBCRich increasedValue];
    }
    
    //Create BCRich Static label
    bcrichLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 40.0f, 300.0f, 50.0f)];
    if (bcrichLabel1 != nil) {
        bcrichLabel1.backgroundColor = [UIColor whiteColor];
        bcrichLabel1.textColor = [UIColor blackColor];
        bcrichLabel1.textAlignment = NSTextAlignmentCenter;
        bcrichLabel1.numberOfLines = 2;
        bcrichLabel1.text = [NSString stringWithFormat:@"The %d BC Rich %@ is in %.2f condition. Original value is $%d.", [newBCRich guitarYear],[newBCRich guitarModel], [newBCRich guitarCondition], [newBCRich originalValue]];
        [self.view addSubview:bcrichLabel1];
    }
    
    //Create BCRich dynamic label
    bcrichLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 100.0f, 300.0f, 50.0f)];
    if (bcrichLabel2 != nil) {
        bcrichLabel2.backgroundColor = [UIColor whiteColor];
        bcrichLabel2.textColor = [UIColor blackColor];
        bcrichLabel2.textAlignment = NSTextAlignmentCenter;
        bcrichLabel2.numberOfLines = 2;
        bcrichLabel2.text = [NSString stringWithFormat:@"Because it is rare, it's currently valued at $%d after %d years of ownership.", [newBCRich increasedValue], [newBCRich yearsOwned]];
        [self.view addSubview:bcrichLabel2];
        //NSLog(@"%d", [newBCRich increasedValue]);
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
