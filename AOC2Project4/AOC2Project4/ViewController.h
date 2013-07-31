// Elijah Freestone
// AOC2 1307
// Project 4
// July 27nd, 2013

//
//  ViewController.h
//  AOC2Project4
//
//  Created by Elijah Freestone on 7/27/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //Declare text view
    IBOutlet UITextView *eventsView;
    //Declare right swipe label
    IBOutlet UILabel *rightSwipeLabel;
    
    //Declare swipe gesture recognizer
    UISwipeGestureRecognizer *rightSwipe;
}

@end
