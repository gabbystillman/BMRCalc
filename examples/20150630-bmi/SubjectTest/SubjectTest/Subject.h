//
//  Subject.h
//  BMIDemo
//
//  Created by Michael Shafae on 6/30/15.
//  Copyright (c) 2015 Michael Shafae. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Subject : NSObject
/*
 {
  int x;
 NSNumber* heightInKilometers;
 }
 */
@property (strong, nonatomic) NSNumber* heightInCentimeters;
@property (strong, nonatomic) NSNumber* weightInKilograms;
@property (readonly) NSNumber* bmi;

//-(NSNumber*) bmi;

@end
