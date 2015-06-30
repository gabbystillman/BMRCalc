//
//  Subject.m
//  BMIDemo
//
//  Created by Michael Shafae on 6/30/15.
//  Copyright (c) 2015 Michael Shafae. All rights reserved.
//

#import "Subject.h"

@implementation Subject
@synthesize heightInCentimeters;
@synthesize weightInKilograms;

-(NSNumber*) bmi
{
  /*
   This is the old fashioned way
  float height = [[self heightInCentimeters] floatValue];
  float weight = [[self weightInKilograms] floatValue];
  float _bmi = weight / (height * height);
  return [NSNumber numberWithFloat:_bmi];
  */
  float heightInMeters = self.heightInCentimeters.floatValue / 100.0;
  float weight = self.weightInKilograms.floatValue;
  float _bmi = weight / (heightInMeters * heightInMeters);
  return [NSNumber numberWithFloat: _bmi];
}
@end
