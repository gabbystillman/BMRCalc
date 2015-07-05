
///Users/gabby/Documents/columbia/SCEHR-iOS/APPS/BMR Calculator/BMR Calculator/Subject.h
//  Subject.m
//  BMIDemo
//
//  Created by Michael Shafae on 6/30/15.
//  Copyright (c) 2015 Michael Shafae. All rights reserved.
//

#import "Subject.h"

static Subject* _mySecretSubject;

@implementation Subject
@synthesize heightInCentimeters;
@synthesize weightInKilograms;
@synthesize isMale;

+(Subject*) sharedSubject
{
    if (_mySecretSubject == nil){
        // my secret subject doesn't exist!
        // I must allocate and initialize it
        _mySecretSubject = [[Subject alloc] init];
    }
    return _mySecretSubject;
}
//added a comment
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

-(NSNumber*) bmr{
    float heightInMeters = self.heightInCentimeters.floatValue / 100.0;
    float weight = self.weightInKilograms.floatValue;
    float age= self.ageInYears.floatValue;
    
    float bmr;
    if(self.isMale){
        bmr= ((13.397*(weight)) + (4.799*(heightInMeters)) - (5.677*(age)) + 88.362);
        
    }
    else {
        bmr=((9.24*(weight)) + (3.098*(heightInMeters)) - (4.330*(age)) + 447.593);
    }
    return [ NSNumber numberWithFloat: bmr];
}
@end

