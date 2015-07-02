//
//  ViewController.m
//  BMRDemo
//
//  Created by Michael Shafae on 7/1/15.
//  Copyright (c) 2015 Michael Shafae. All rights reserved.
//

#import "ViewController.h"
#import "Subject.h"

float inchesToCentimeters(float inches){
  return inches * 2.54;
}

float poundsToKilograms(float lbs){
  return lbs * 0.453592;
}

@interface ViewController ()

@end

@implementation ViewController

@synthesize numberFormat;

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  self.numberFormat = [[NSNumberFormatter alloc] init];
  [self.numberFormat setNumberStyle: NSNumberFormatterDecimalStyle];
  [self.numberFormat setMinimumFractionDigits: 2];
  [self.numberFormat setMaximumFractionDigits: 2];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
  [self.heightTextField resignFirstResponder];
  [self.weightTextField resignFirstResponder];
  [self.ageTextField resignFirstResponder];
}

- (IBAction)calculateButtonPressed:(id)sender {

  [self.heightTextField resignFirstResponder];
  [self.weightTextField resignFirstResponder];
  [self.ageTextField resignFirstResponder];

  if ([self.weightTextField.text isEqualToString: @""] == YES ||
      [self.heightTextField.text isEqualToString: @""] == YES ||
      [self.ageTextField.text isEqualToString: @""] == YES) {
    // Text field(s) blank; do nothing!
    return;
  }
  
  Subject* subject = [Subject sharedSubject];

  if (self.sexSegmentedControl.selectedSegmentIndex == 0) {
    subject.male = YES;
  }else{
    subject.male = NO;
  }
  
  if( self.unitsSegmentedControl.selectedSegmentIndex == 0 ){
    // USA! USA! USA!
    subject.heightInCentimeters = [NSNumber numberWithFloat: inchesToCentimeters(self.heightTextField.text.floatValue)];
    subject.weightInKilograms = [NSNumber numberWithFloat: poundsToKilograms(self.weightTextField.text.floatValue)];
  }else{
    // Metric...
    subject.heightInCentimeters = [NSNumber numberWithFloat: self.heightTextField.text.floatValue];
    subject.weightInKilograms = [NSNumber numberWithFloat: self.weightTextField.text.floatValue];
  }
  subject.ageInYears = [NSNumber numberWithInteger: self.ageTextField.text.integerValue];
  
  self.bmrValueLabel.text = [NSString stringWithFormat: @"%@ kcal/day", [self.numberFormat stringFromNumber: subject.bmr]];
  self.bmiValueLabel.text = [self.numberFormat stringFromNumber: subject.bmi];
  self.bmiStringLabel.text = subject.bmiString;

  NSBundle* mainBundle = [NSBundle mainBundle];
  NSString* filename = [NSString stringWithFormat: @"img_%lu", subject.bmiLevel];
  NSString* imagePath = [mainBundle pathForResource: filename ofType: @".JPG"];
  assert(imagePath != nil);
  UIImage* image = [UIImage imageWithContentsOfFile: imagePath];
  self.bmiImageView.image = image;
  
  self.bmrLabel.hidden = NO;
  self.bmiLabel.hidden = NO;
  self.bmrValueLabel.hidden = NO;
  self.bmiValueLabel.hidden = NO;
  self.bmiStringLabel.hidden = NO;
  self.bmiImageView.hidden = NO;

}

- (IBAction)unitsControlChanged:(id)sender {
  if( self.unitsSegmentedControl.selectedSegmentIndex == 0 ){
    // USA! USA! USA!
    self.heightUnitsLabel.text = @"Inches";
    self.weightUnitsLabel.text = @"Pounds";
  }else{
    // Metric...
    self.heightUnitsLabel.text = @"Centimeters";
    self.weightUnitsLabel.text = @"Kilograms";
  }
  self.bmrLabel.hidden = YES;
  self.bmiLabel.hidden = YES;
  self.bmrValueLabel.hidden = YES;
  self.bmiValueLabel.hidden = YES;
  self.bmiStringLabel.hidden = YES;
  self.bmiImageView.hidden = YES;

}

- (IBAction)sexControlChanged:(id)sender {
  self.bmrLabel.hidden = YES;
  self.bmiLabel.hidden = YES;
  self.bmrValueLabel.hidden = YES;
  self.bmiValueLabel.hidden = YES;
  self.bmiStringLabel.hidden = YES;
  self.bmiImageView.hidden = YES;
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
  self.bmrLabel.hidden = YES;
  self.bmiLabel.hidden = YES;
  self.bmrValueLabel.hidden = YES;
  self.bmiValueLabel.hidden = YES;
  self.bmiStringLabel.hidden = YES;
  self.bmiImageView.hidden = YES;

  return YES;
}
@end
