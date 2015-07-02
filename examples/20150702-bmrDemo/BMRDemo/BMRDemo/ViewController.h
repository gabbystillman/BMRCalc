//
//  ViewController.h
//  BMRDemo
//
//  Created by Michael Shafae on 7/1/15.
//  Copyright (c) 2015 Michael Shafae. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UISegmentedControl *unitsSegmentedControl;
@property (weak, nonatomic) IBOutlet UISegmentedControl *sexSegmentedControl;
@property (weak, nonatomic) IBOutlet UITextField *heightTextField;
@property (weak, nonatomic) IBOutlet UITextField *weightTextField;
@property (weak, nonatomic) IBOutlet UITextField *ageTextField;
@property (weak, nonatomic) IBOutlet UILabel *heightUnitsLabel;

@property (weak, nonatomic) IBOutlet UILabel *weightUnitsLabel;
@property (weak, nonatomic) IBOutlet UILabel *bmrLabel;
@property (weak, nonatomic) IBOutlet UILabel *bmiLabel;
@property (weak, nonatomic) IBOutlet UILabel *bmrValueLabel;
@property (weak, nonatomic) IBOutlet UILabel *bmiValueLabel;
@property (weak, nonatomic) IBOutlet UILabel *bmiStringLabel;
@property (weak, nonatomic) IBOutlet UIImageView *bmiImageView;

@property (strong, nonatomic) NSNumberFormatter *numberFormat;

- (IBAction)calculateButtonPressed:(id)sender;
- (IBAction)unitsControlChanged:(id)sender;
- (IBAction)sexControlChanged:(id)sender;

@end

