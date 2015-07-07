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
@property (strong, nonatomic) NSNumber* ageInYears;
@property BOOL _isMale;
@property (readonly) NSNumber* bmr;

-(NSNumber*) bmi;
+(Subject*) sharedSubject;

@end
