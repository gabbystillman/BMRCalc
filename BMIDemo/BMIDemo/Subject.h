//
//  Subject.h
//  BMIDemo
//
//  Created by Gabrielle Stillman on 6/30/15.
//  Copyright (c) 2015 Gabrielle Stillman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Subject : NSObject
@property (strong, nonatomic) NSNumber* heightInCentimeters;  ///making the name but not the space. not saying how much storage

@property (strong, nonatomic) NSNumber* weightInKilograms; // data members and properties are NOT the same Read/Write

@property(readonly) NSNumber* bmi; //read only

+(Subject*) sharedSubject;



//-(NSNumber) bmi;


@end
