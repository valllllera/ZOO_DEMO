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

@property (strong, nonatomic) AnimalModel *mammal;
@property (strong, nonatomic) NSMutableArray *array;

+ (DataManager *)sharedInstance;

@end
