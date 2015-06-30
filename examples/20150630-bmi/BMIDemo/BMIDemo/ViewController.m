//
//  ViewController.m
//  BMIDemo
//
//  Created by Michael Shafae on 6/30/15.
//  Copyright (c) 2015 Michael Shafae. All rights reserved.
//

#import "ViewController.h"
#import "Subject.h"

NSNumber* centimetersToInches(NSNumber* centimeters){
  float cm = centimeters.floatValue;
  return [NSNumber numberWithFloat: (cm / 2.54)];
}

NSNumber* inchesToCentimeters(NSNumber* inches){
  float _inches = inches.floatValue;
  return [NSNumber numberWithFloat: (_inches * 2.54)];
}

NSNumber* poundsToKilograms(NSNumber* pounds){
  float lbs = pounds.floatValue;
  return [NSNumber numberWithFloat: (lbs/2.2)];
}

NSNumber* kilogramsToPounds(NSNumber* kilograms){
  float kg = kilograms.floatValue;
  return [NSNumber numberWithFloat: (kg * 2.2)];
}

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
  [self.myHeightTextField resignFirstResponder];
  [self.myWeightTextField resignFirstResponder];
}

- (IBAction)goButtonPressed:(id)sender {
  NSNumber* heightNumber = poundsToKilograms([NSNumber numberWithFloat: self.myHeightTextField.text.floatValue]);
  NSNumber* weightNumber = inchesToCentimeters([NSNumber numberWithFloat: self.myWeightTextField.text.floatValue]);
  Subject* subject = [Subject sharedSubject];
  subject.heightInCentimeters = heightNumber;
  subject.weightInKilograms = weightNumber;
  self.myBMILabel.text = subject.bmi.stringValue;
  self.myBMILabel.enabled = YES;

}
@end
