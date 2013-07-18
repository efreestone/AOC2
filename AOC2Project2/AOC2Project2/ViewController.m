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

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    //Set background color
    self.view.backgroundColor = [UIColor darkGrayColor];
    
    //Creating title text label
    guitarLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 30.0f)];
    if (guitarLabel != nil) {
        guitarLabel.backgroundColor = [UIColor whiteColor];
        guitarLabel.textColor = [UIColor blackColor];
        guitarLabel.textAlignment = NSTextAlignmentCenter;
        guitarLabel.text = @"Guitar Factory";
        [self.view addSubview:guitarLabel];
    }
    
    //Create isntance of BCRichGuitar class
    BCRichGuitar *newBCRich = (BCRichGuitar*)[GuitarFactory createNewGuitar:BCRICH];
    if (newBCRich != nil) {
        [newBCRich setGuitarYear:2003];
        [newBCRich setGuitarModel:@"Jr V Body Art"];
        [newBCRich setGuitarCondition:0.75f];
        [newBCRich setOriginalValue:300];
        [newBCRich calcGuitarValue:[newBCRich guitarCondition]];
    }
    
    //Create BCRich Static label
    bcrichLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 40.0f, 320.0f, 50.0f)];
    if (bcrichLabel1 != nil) {
        bcrichLabel1.backgroundColor = [UIColor whiteColor];
        bcrichLabel1.textColor = [UIColor blackColor];
        bcrichLabel1.textAlignment = NSTextAlignmentCenter;
        bcrichLabel1.numberOfLines = 2;
        bcrichLabel1.text = [NSString stringWithFormat:@"My %d BC Rich %@ is in %.2f condition. Original value is $%d.", [newBCRich guitarYear],[newBCRich guitarModel], [newBCRich guitarCondition], [newBCRich originalValue]];
        [self.view addSubview:bcrichLabel1];
    }
    
    //Create BCRich dynamic label
    bcrichLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 100.0f, 320.0f, 50.0f)];
    if (bcrichLabel2 != nil) {
        bcrichLabel2.backgroundColor = [UIColor whiteColor];
        bcrichLabel2.textColor = [UIColor blackColor];
        bcrichLabel2.textAlignment = NSTextAlignmentCenter;
        bcrichLabel2.numberOfLines = 2;
        //Display total current value of guitar
        bcrichLabel2.text = [NSString stringWithFormat:@"Because it is rare, it's currently valued at $%d after %d years of ownership.", [newBCRich increasedValue], [newBCRich yearsOwned]];
        [self.view addSubview:bcrichLabel2];
        //NSLog(@"%d", [newBCRich increasedValue]);
    }
    
    //Create an instance of ESPGuitar class
    ESPGuitar *newESP = (ESPGuitar*)[GuitarFactory createNewGuitar:ESP];
    if (newESP != nil) {
        [newESP setGuitarYear:2010];
        [newESP setGuitarModel:@"LTD H-1001FM"];
        [newESP setGuitarCondition:0.95f];
        [newESP setOriginalValue:1000];
        [newESP setTopMaterial:FLAMEMAPLE];
        [newESP calcGuitarValue:[newESP guitarCondition]];
    }
    
    //Create ESP Static label
    espLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 160.0f, 320.0f, 50.0f)];
    if (espLabel1 != nil) {
        espLabel1.backgroundColor = [UIColor whiteColor];
        espLabel1.textColor = [UIColor blackColor];
        espLabel1.textAlignment = NSTextAlignmentCenter;
        espLabel1.numberOfLines = 2;
        espLabel1.text = [NSString stringWithFormat:@"My %d ESP %@ is in %.2f condition. Original value is $%d.", [newESP guitarYear], [newESP guitarModel], [newESP guitarCondition], [newESP originalValue]];
        [self.view addSubview:espLabel1];
    }
    
    //Create ESP Dynamic label
    espLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 220.0f, 320.0f, 50.0f)];
    if (espLabel2 != nil) {
        espLabel2.backgroundColor = [UIColor whiteColor];
        espLabel2.textColor = [UIColor blackColor];
        espLabel2.textAlignment = NSTextAlignmentCenter;
        espLabel2.numberOfLines = 2;
        //Display value added by guitar top
        espLabel2.text = [NSString stringWithFormat:@"The Flamed Maple top adds $%.2f to the value of the guitar.", [newESP valueAdded]];
        [self.view addSubview:espLabel2];
    }
    
    //Create an instance of SchecterGuitar class
    SchecterGuitar *newSchecter = (SchecterGuitar*)[GuitarFactory createNewGuitar:SCHECTER];
    if (newSchecter != nil) {
        [newSchecter setGuitarYear:2008];
        [newSchecter setGuitarModel:@"Damien-7"];
        [newSchecter setGuitarCondition:0.85f];
        [newSchecter setOriginalValue:500];
        [newSchecter calcGuitarValue:[newSchecter numberOfFrets]];
        //NSLog(@"%d", [newSchecter numberOfNotes]);
    }
    
    //Create Schecter Static label
    schecterLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 280.0f, 320.0f, 50.0f)];
    if (schecterLabel1 != nil) {
        schecterLabel1.backgroundColor = [UIColor whiteColor];
        schecterLabel1.textColor = [UIColor blackColor];
        schecterLabel1.textAlignment = NSTextAlignmentCenter;
        schecterLabel1.numberOfLines = 2;
        schecterLabel1.text = [NSString stringWithFormat:@"My %d Schecter %@ is in %.2f condition. Original value is $%d.", [newSchecter guitarYear], [newSchecter guitarModel], [newSchecter guitarCondition], [newSchecter originalValue]];
        [self.view addSubview:schecterLabel1];
    }
    
    //Create Schecter Dynamic label
    schecterLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 340.0f, 320.0f, 50.0f)];
    if (schecterLabel2 != nil) {
        schecterLabel2.backgroundColor = [UIColor whiteColor];
        schecterLabel2.textColor = [UIColor blackColor];
        schecterLabel2.textAlignment = NSTextAlignmentCenter;
        schecterLabel2.numberOfLines = 2;
        //Display number of available notes instead of value calculation
        schecterLabel2.text = [NSString stringWithFormat:@"Because it has %d strings and %d frets, there are %d notes on the fretboard.", [newSchecter numberOfStrings], [newSchecter numberOfFrets], [newSchecter numberOfNotes]];
        [self.view addSubview:schecterLabel2];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
