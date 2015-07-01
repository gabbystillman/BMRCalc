//
//  ViewController.h
//  SegmentedControllerDemo
//
//  Created by Vanilla Wafer on 6/26/14.
//  Copyright (c) 2014 Michael Shafae. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *segmentActiveLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *mySegmentedController;
- (IBAction)checkSegmentedController:(id)sender;
- (IBAction)segmentedControllerTouched:(id)sender;

@end
