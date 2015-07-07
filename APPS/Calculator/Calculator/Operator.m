//
//  Operator.m
//  Calculator
//
//  Created by Gabrielle Stillman on 7/6/15.
//  Copyright (c) 2015 Gabrielle Stillman. All rights reserved.
//

#import "Operator.h"

@implementation Operator
@synthesize operation;
@synthesize precendence;

-(Operator*) initWithOperation: (SEL)anOperation precedence: (unsigned int) thePrecedence
{
    self = [super init];
    if (self) {
        operation = anOperation;
        precendence = thePrecedence;

            }
    return self;
}


@end
