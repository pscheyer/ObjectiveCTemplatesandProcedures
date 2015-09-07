//
//  ViewController.h
//  TimerTest
//
//  Created by Peter Scheyer on 4/8/15.
//  Copyright (c) 2015 Peter Scheyer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    int mainInt;
    IBOutlet UILabel *seconds;
    NSTimer *timer;
}

- (IBAction)Start;

@end

