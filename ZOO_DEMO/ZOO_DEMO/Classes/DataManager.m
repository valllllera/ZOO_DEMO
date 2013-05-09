//
//  DataManager.m
//  ZOO_DEMO
//
//  Created by Alexandr Kolesnik on 09.05.13.
//  Copyright (c) 2013 vexadev. All rights reserved.
//

#import "DataManager.h"

@implementation DataManager

static DataManager *sharedInstance = nil;


+ (DataManager *)sharedInstance
{
    @synchronized(self)
    {
        if(!sharedInstance)
        {
            sharedInstance = [[self alloc] init];
        }
    }
    return sharedInstance;
}


-(id)init
{
    self = [super init];
    if(self)
    {
        mammals = [NSArray arrayWithObjects:@"Белый медведь",@"Бурый медведь",@"Лев",@"Тигр",@"Мангуст",@"Выдра", nil];
        birds  = [NSArray arrayWithObjects:@"Журавль индейский",@"Цапля серая",@"Гуси-сухоносы",@"Пеганки",@"Самка павлина",@"Ара гибридный", nil];
        reptiles = [NSArray arrayWithObjects:@"Варан",@"Водяная агама",@"Сетчатый питон",@"Кайманы",@"Василиск",@"Питон тигровый", nil];
        fish = [NSArray arrayWithObjects:@"Красноголовая",@"Золотой гурами",@"Принцесса Бурунди",@"Минор",@"Королева ньяса",@"Телескоп", nil];
        self.animals = [NSArray arrayWithObjects:mammals,birds,reptiles,fish nil];
    }
    return self;
}
@end
