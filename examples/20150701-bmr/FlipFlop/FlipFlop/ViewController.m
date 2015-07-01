//
//  ViewController.m
//  FlipFlop
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

- (IBAction)buttonPressed:(id)sender {
    NSLog(@"button pressed");
    static BOOL toggle = 0;
    NSString *imagePath;
    NSBundle *myAppBundle = [NSBundle mainBundle];
    toggle = !toggle;
    if( toggle ){
        imagePath = [myAppBundle pathForResource:@"dog" ofType:@"jpg"];
    }else{
        imagePath = [myAppBundle pathForResource:@"cat" ofType:@"jpg"];
    }
    self.myImageView.image = [UIImage imageWithContentsOfFile: imagePath];
}
@end
