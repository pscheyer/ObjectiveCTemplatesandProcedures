//
//  ViewController.m
//  TimerTest
//
//  Created by Peter Scheyer on 4/8/15.
//  Copyright (c) 2015 Peter Scheyer. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController

-(IBAction)Start  {
    mainInt = 10;
    timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(countdown) userInfo:nil repeats:YES];
}

-(void) countDown {
    mainInt -= 1;
    seconds.text = [NSString stringWithFormat:@"%i", mainInt];
    if (mainInt == 0) {
        [timer invalidate];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
