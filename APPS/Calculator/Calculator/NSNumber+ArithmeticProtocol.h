//
//  NSNumber+ArithmeticProtocol.h
//  
//
//  Created by Gabrielle Stillman on 7/6/15.
//
//

#import <Foundation/Foundation.h>

@interface NSNumber (ArithmeticProtocol)
-(NSNumber*) add: (NSNumber*) other;
-(NSNumber*) subtract: (NSNumber*) other;
-(NSNumber*) multiply: (NSNumber*) other;
-(NSNumber*) divide: (NSNumber*) other;

@end
