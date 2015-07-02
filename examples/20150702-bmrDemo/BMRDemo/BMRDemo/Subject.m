//
//  Subject.m
//  BMRDemo
//
//  Created by Michael Shafae on 7/1/15.
//  Copyright (c) 2015 Michael Shafae. All rights reserved.
//

#import "Subject.h"

static Subject* _sharedSingletonSubject;

@implementation Subject
@synthesize heightInCentimeters;
@synthesize weightInKilograms;
@synthesize ageInYears;
@synthesize male;

+(void) initialize
{
  if( [Subject class] == self ){
    _sharedSingletonSubject = [self new];
  }
}

+(id) allocWithZone: (NSZone*) aZone
{
  if( _sharedSingletonSubject && [Subject class] == self ){
    [NSException raise: NSGenericException format: @"May not create more than one instance of a singleton class!"];
  }
  return [super allocWithZone: aZone];
}

+(Subject*) sharedSubject
{
  return _sharedSingletonSubject;
}

-(NSString*) description
{
  return [NSString stringWithFormat:@"Subject: %@ cm, %@ kg, %@ y.o. isMale? %d", self.heightInCentimeters.stringValue, self.weightInKilograms.stringValue, self.ageInYears.stringValue, self.isMale];
}

-(NSNumber*) bmi
{
  // FYI, it's faster to multiply than divide
  float height = self.heightInCentimeters.floatValue * 0.01;
  float mass = self.weightInKilograms.floatValue;
  float bmi = mass / (height * height);
  return [NSNumber numberWithFloat: bmi];
}

-(NSString*) bmiString
{
  float bmiValue = self.bmi.floatValue;
  NSString *rv = nil;
  if(bmiValue <= 16.0){
    rv = @"Severe Thinness";
  }else if( bmiValue < 17.0 ){
    rv = @"Moderate Thinness";
  }else if( bmiValue < 18.5 ){
    rv = @"Mild Thinness";
  }else if( bmiValue < 25.0 ){
    rv = @"Normal Range";
  }else if( bmiValue < 30.0 ){
    rv = @"Overweight";
  }else if( bmiValue < 35.0 ){
    rv = @"Moderately Obese";
  }else if( bmiValue < 40.0 ){
    rv = @"Severely Obese";
  }else{
    rv = @"Very Severely Obese";
  }
  return rv;
}

-(NSUInteger) bmiLevel
{
  float bmiValue = self.bmi.floatValue;
  NSUInteger rv = 0;
  if(bmiValue <= 16.0){
    rv = 0;
  }else if( bmiValue < 17.0 ){
    rv = 1;
  }else if( bmiValue < 18.5 ){
    rv = 2;
  }else if( bmiValue < 25.0 ){
    rv = 3;
  }else if( bmiValue < 30.0 ){
    rv = 4;
  }else if( bmiValue < 35.0 ){
    rv = 5;
  }else if( bmiValue < 40.0 ){
    rv = 6;
  }else{
    rv = 7;
  }
  return rv;
}

-(NSNumber*) bmr
{
  float height = self.heightInCentimeters.floatValue;
  float mass = self.weightInKilograms.floatValue;
  float age = self.ageInYears.floatValue;
  float constants[8] = {13.397, 4.799, 5.677, 88.362, \
                        9.247, 3.098, 4.33, 447.593};
  float bmr;
  int base = 0;
  if (self.isMale == NO) {
    base = 4;
  }
  bmr = constants[base] * mass + constants[base+1] * height + constants[base+2] * age + constants[base+3];
  return [NSNumber numberWithFloat: bmr];
}

@end
