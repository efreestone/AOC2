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
    // Creating default text label
    guitarLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 300.0f, 30.0f)];
    if (guitarLabel != nil){
        guitarLabel.backgroundColor = [UIColor whiteColor];
        guitarLabel.textColor = [UIColor blackColor];
        guitarLabel.textAlignment = NSTextAlignmentCenter;
        guitarLabel.text = @"Guitar Factory";
        [self.view addSubview:guitarLabel];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
