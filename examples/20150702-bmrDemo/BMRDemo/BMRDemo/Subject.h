//
//  Subject.h
//  BMRDemo
//
//  Created by Michael Shafae on 7/1/15.
//  Copyright (c) 2015 Michael Shafae. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Subject : NSObject
@property (strong, nonatomic) NSNumber* heightInCentimeters;
@property (strong, nonatomic) NSNumber* weightInKilograms;
@property (strong, nonatomic) NSNumber* ageInYears;
@property (assign, nonatomic, getter=isMale) BOOL male;
@property (readonly) NSNumber* bmi;
@property (readonly) NSString* bmiString;
@property (readonly) NSUInteger bmiLevel;
@property (readonly) NSNumber* bmr;

+(Subject*) sharedSubject;

@end
