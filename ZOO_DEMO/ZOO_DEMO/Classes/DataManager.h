//
//  DataManager.h
//  ZOO_DEMO
//
//  Created by Alexandr Kolesnik on 09.05.13.
//  Copyright (c) 2013 vexadev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataManager : NSObject
{
    NSArray *mammals;
    NSArray *birds;
    NSArray *fish;
    NSArray *reptiles;
  
}
@property (strong,nonatomic) NSArray *animals;
@end
