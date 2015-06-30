//
//  main.m
//  SubjectTest
//
//  Created by Michael Shafae on 6/30/15.
//  Copyright (c) 2015 Michael Shafae. All rights reserved.
//

#import <Foundation/Foundation.h>
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

int main(int argc, const char * argv[]) {
  @autoreleasepool {
      // insert code here...
    Subject *mySubject = [[Subject alloc] init];
    mySubject.weightInKilograms = poundsToKilograms(@230);
    mySubject.heightInCentimeters = inchesToCentimeters(@70);
    NSLog(@"The BMI for someone with %@ kg and %@ cm is %@",
          mySubject.weightInKilograms.stringValue,
          mySubject.heightInCentimeters.stringValue,
          mySubject.bmi.stringValue);
  }
    return 0;
}
