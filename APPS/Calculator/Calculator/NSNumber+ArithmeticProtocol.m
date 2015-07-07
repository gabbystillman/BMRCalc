//
//  NSNumber+ArithmeticProtocol.m
//  
//
//  Created by Gabrielle Stillman on 7/6/15.
//
//

#import "NSNumber+ArithmeticProtocol.h"

@implementation NSNumber (ArithmeticProtocol)
-(NSNumber*) add: (NSNumber*) other
{
   float sum= self.floatValue + other.floatValue;
    return [NSNumber numberWithFloat: sum];
    
}

-(NSNumber*) subtract: (NSNumber*) other
{
    float difference= self.floatValue - other.floatValue;
    return [NSNumber numberWithFloat: difference];
}

-(NSNumber*) multiply: (NSNumber*) other
{
    float prod= self.floatValue * other.floatValue;
    return [NSNumber numberWithFloat: prod];
    
}

-(NSNumber*) divide: (NSNumber*) other
{
    float quotient = self.floatValue * other.floatValue;
    return [NSNumber numberWithFloat: quotient];
    
}







@end
