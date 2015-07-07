//
//  ViewController.m
//  BMR Calculator
//
//  Created by Gabrielle Stillman on 7/1/15.
//  Copyright (c) 2015 Gabrielle Stillman. All rights reserved.
//

#import "ViewController.h"
#import "Subject.h";

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
    [self.myHeight resignFirstResponder];
    [self.myWeight resignFirstResponder];
    [self.myAge resignFirstResponder];
}

/*- (IBAction)goButtonPressed:(id)sender {
    NSNumber* heightNumber = inchesToCentimeters([NSNumber numberWithFloat: self.myHeightTextField.text.floatValue]);
    NSNumber* weightNumber = poundsToKilograms([NSNumber numberWithFloat: self.myWeightTextField.text.floatValue]);
    Subject* subject = [Subject sharedSubject];
    subject.heightInCentimeters = heightNumber;
    subject.weightInKilograms = weightNumber;
    self.myBMILabel.text = subject.bmi.stringValue;
    self.myBMILabel.enabled = YES;
    
}*/
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

- (IBAction)maleAction:(id)sender {
    Subject* maleSubject=[Subject sharedSubject];
    maleSubject._isMale= YES;
}

- (IBAction)femaleAction:(id)sender {
    Subject* femaleSubject= [Subject sharedSubject];
    femaleSubject._isMale=NO;
}

- (IBAction)goAction:(id)sender {
    NSNumber* heightNumber = inchesToCentimeters([NSNumber numberWithFloat: self.myHeight.text.floatValue]);
    NSNumber* weightNumber = poundsToKilograms([NSNumber numberWithFloat: self.myWeight.text.floatValue]);
    NSNumber* ageNumber= [NSNumber numberWithFloat:self.myAge.text.floatValue];
    Subject* subject = [Subject sharedSubject];
    subject.ageInYears = ageNumber;
    subject.heightInCentimeters = heightNumber;
    subject.weightInKilograms = weightNumber;
    self.myBMR.text = subject.bmr.stringValue;
    self.myBMI.text = subject.bmi.stringValue;
    self.myBMR.enabled = YES;
    
                          
    
    
    
}
@end
