//
//  ArithmeticProtocol.h
//  Calculator
//
//  Created by Gabrielle Stillman on 7/6/15.
//  Copyright (c) 2015 Gabrielle Stillman. All rights reserved.
//

#ifndef Calculator_ArithmeticProtocol_h
#define Calculator_ArithmeticProtocol_h

@protocol ArithmeticProtocol
-(NSNumber*) add: (NSNumber*) other;
-(NSNumber*) subtract: (NSNumber*) other;
-(NSNumber*) multiply: (NSNumber*) other;
-(NSNumber*) divide: (NSNumber*) other;


#endif
