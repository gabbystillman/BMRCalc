//
//  ViewController.h
//  BMR Calculator
//
//  Created by Gabrielle Stillman on 7/1/15.
//  Copyright (c) 2015 Gabrielle Stillman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *myHeight;
@property (weak, nonatomic) IBOutlet UITextField *myWeight;

@property (weak, nonatomic) IBOutlet UITextField *myAge;


- (IBAction)goAction:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *myBMR;

@property (weak, nonatomic) IBOutlet UITextField *myBMI;

- (IBAction)myGenderSwitch:(id)sender;
@property (weak, nonatomic) IBOutlet UISegmentedControl *myOutlet;


@end
