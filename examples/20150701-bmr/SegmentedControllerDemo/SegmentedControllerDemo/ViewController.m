//
//  ViewController.m
//  SegmentedControllerDemo
//
//  Created by Vanilla Wafer on 6/26/14.
//  Copyright (c) 2014 Michael Shafae. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)checkSegmentedController:(id)sender {
    NSLog(@"check segmented controller pressed");
    NSLog(@"segment touched: %d", self.mySegmentedController.selectedSegmentIndex);
    self.segmentActiveLabel.text = [self.mySegmentedController titleForSegmentAtIndex: self.mySegmentedController.selectedSegmentIndex];
    self.mySegmentedController.selectedSegmentIndex = -1;
}

- (IBAction)segmentedControllerTouched:(id)sender {
    NSLog(@"Segmented Controller Value has changed");
    NSLog(@"current values is %d\n", self.mySegmentedController.selectedSegmentIndex);
}
@end
