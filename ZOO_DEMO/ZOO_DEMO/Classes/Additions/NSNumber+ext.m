//
//  NSNumber+ext.m
//  Rugbi
//
//  Created by Evgeniy Tka4enko on 09.04.13.
//  Copyright (c) 2013 vexadev. All rights reserved.
//

#import "NSNumber+ext.h"

@implementation NSNumber (ext)

+ (NSNumber *)numberWithString:(NSString *)string
{
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    [formatter setNumberStyle:NSNumberFormatterDecimalStyle];
    return  [formatter numberFromString:string];
}

@end
