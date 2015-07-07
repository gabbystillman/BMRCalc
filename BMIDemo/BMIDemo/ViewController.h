//
//  ViewController.h
//  BMIDemo
//
//  Created by Gabrielle Stillman on 6/30/15.
//  Copyright (c) 2015 Gabrielle Stillman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *myWeightTextField;
@property (weak, nonatomic) IBOutlet UITextField *myHeightTextField;
@property (weak, nonatomic) IBOutlet UILabel *myBMILabel;
- (IBAction)myGoButton:(id)
    sender;

@end

