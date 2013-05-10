//
//  DataManager.h
//  ZOO_DEMO
//
//  Created by Alexandr Kolesnik on 09.05.13.
//  Copyright (c) 2013 vexadev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AnimalModel.h"

@interface DataManager : NSObject
{
    NSArray *mammals;
    NSArray *birds;
    NSArray *fish;
    NSArray *reptiles;
    
    AnimalModel *bird;
    AnimalModel *reptile;
    AnimalModel *fishs;
}
@property (strong, nonatomic) AnimalModel *mammal;
@property (strong, nonatomic) NSArray *animals;
@property (strong, nonatomic) NSMutableArray *animalArray;
@property (strong, nonatomic) NSMutableArray *array;
@end
