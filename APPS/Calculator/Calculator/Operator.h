//
//  Operator.h
//  Calculator
//
//  Created by Gabrielle Stillman on 7/6/15.
//  Copyright (c) 2015 Gabrielle Stillman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Operator : NSObject
@property (assign) unsigned int precendence;
@property (assign)  SEL operation; // stores which symbol we will use

-(Operator*) initWithOperation: (SEL) anOperation precedence: (unsigned int) thePrecedence;

@end
