//
//  ViewController.m
//  BMIDemo
//
//  Created by Gabrielle Stillman on 6/30/15.
//  Copyright (c) 2015 Gabrielle Stillman. All rights reserved.
//
#import "Subject.h";
#import "ViewController.h"

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

- (IBAction)myGoButton:(id)sender {
    NSNumber* heightNumber= [NSNumber numberWithFloat:self.myHeightTextField.text.floatValue*.45];
    NSNumber* weightNumber= [NSNumber numberWithFloat:self. myWeightTextField.text.floatValue*2.54];
    Subject* subject=[Subject sharedSubject];
    subject.
    
    

    
}
@end
