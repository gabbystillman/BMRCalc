//
//  Subject.m
//  BMIDemo
//
//  Created by Gabrielle Stillman on 6/30/15.
//  Copyright (c) 2015 Gabrielle Stillman. All rights reserved.
//
//
//  Subject.h
//  BMIDemo
//
//  Created by Gabrielle Stillman on 6/30/15.
//  Copyright (c) 2015 Gabrielle Stillman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Subject.h"
static Subject*_mySecretSubject;

@implementation Subject
@synthesize heightInCentimeters;
@synthesize weightInKilograms;
+(Subject*) sharedSubject
{
    if(_mySecretSubject == nil){
        //my secret subject does not exist
        // I must allocate and initialize it
        _mySecretSubject = [[Subject alloc] init];
        
        
    }
    

}
-(NSNumber*) bmi  //NSNumber is the return type
{
float heightInMeters= self.heightInCentimeters.floatValue / 100;
float weight= self. weightInKilograms.floatValue;
float _bmi= weight / (heightInMeters*heightInMeters);
return [NSNumber numberWithFloat: _bmi];

}

//@end Subject : NSObject

@end