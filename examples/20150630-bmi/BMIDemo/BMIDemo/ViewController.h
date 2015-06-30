//
//  ViewController.h
//  BMIDemo
//
//  Created by Michael Shafae on 6/30/15.
//  Copyright (c) 2015 Michael Shafae. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *myWeightTextField;
@property (weak, nonatomic) IBOutlet UITextField *myHeightTextField;
@property (weak, nonatomic) IBOutlet UILabel *myBMILabel;
- (IBAction)goButtonPressed:(id)sender;


@end

