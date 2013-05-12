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
        self.array = [NSMutableArray array];
        
        _mammal = [[AnimalModel alloc] init];
        _mammal.name = @"Полярный медведь";
        _mammal.imageName = @"Polar Bear_2.png";
        [_array addObject:_mammal];
        _mammal = [[AnimalModel alloc] init];
        _mammal.name = @"Бурый медведь";
        _mammal.imageName = @"220px-Medved_mzoo.png";
        [_array addObject:_mammal];
        _mammal = [[AnimalModel alloc] init];
        _mammal.name = @"Лев";
        _mammal.imageName = @"lion.png";
        [_array addObject:_mammal];
        _mammal = [[AnimalModel alloc] init];
        _mammal.name = @"Тигр";
        _mammal.imageName = @"tiger.png";
        [_array addObject:_mammal];
        _mammal = [[AnimalModel alloc] init];
        _mammal.name = @"Мангуст";
        _mammal.imageName = @"mangust.png";
        [_array addObject:_mammal];
        _mammal = [[AnimalModel alloc] init];
        _mammal.name = @"Выдра";
        _mammal.imageName = @"vidra.png";
        [_array addObject:_mammal];
        
        
        _mammal = [[AnimalModel alloc] init];
        _mammal.name = @"Журавль индийский";
        _mammal.imageName = @"Sarus.png";
        [_array addObject:_mammal];
        _mammal = [[AnimalModel alloc] init];
        _mammal.name = @"Цапля серая";
        _mammal.imageName = @"caplya.png";
        [_array addObject:_mammal];
        _mammal = [[AnimalModel alloc] init];
        _mammal.name = @"Гуси-сухоносы";
        _mammal.imageName = @"goose.png";
        [_array addObject:_mammal];
        _mammal = [[AnimalModel alloc] init];
        _mammal.name = @"Пеганки";
        _mammal.imageName = @"peganki.png";
        [_array addObject:_mammal];
        _mammal = [[AnimalModel alloc] init];
        _mammal.name = @"Павлин";
        _mammal.imageName = @"pavlin.png";
        [_array addObject:_mammal];
        _mammal = [[AnimalModel alloc] init];
        _mammal.name = @"Ара гибридный";
        _mammal.imageName = @"ara.png";
        [_array addObject:_mammal];
        
        _mammal = [[AnimalModel alloc] init];
        _mammal.name = @"Варан";
        _mammal.imageName = @"Varan.png";
        [_array addObject:_mammal];
        _mammal = [[AnimalModel alloc] init];
        _mammal.name = @"Водяная агама";
        _mammal.imageName = @"agama.png";
        [_array addObject:_mammal];
        _mammal = [[AnimalModel alloc] init];
        _mammal.name = @"Сетчатый питон";
        _mammal.imageName = @"pyton.png";
        [_array addObject:_mammal];
        _mammal = [[AnimalModel alloc] init];
        _mammal.name = @"Кайманы";
        _mammal.imageName = @"kayman.png";
        [_array addObject:_mammal];
        _mammal = [[AnimalModel alloc] init];
        _mammal.name = @"Василиск";
        _mammal.imageName = @"vasylysk.png";
        [_array addObject:_mammal];
        _mammal = [[AnimalModel alloc] init];
        _mammal.name = @"Питон тигровый";
        _mammal.imageName = @"pitonTygroviy.png";
        [_array addObject:_mammal];
        
        _mammal = [[AnimalModel alloc] init];
        _mammal.name = @"Красноголовая";
        _mammal.imageName = @"redhead.png";
        [_array addObject:_mammal];
        _mammal = [[AnimalModel alloc] init];
        _mammal.name = @"Золотой гурами";
        _mammal.imageName = @"zolotaya.png";
        [_array addObject:_mammal];
        _mammal = [[AnimalModel alloc] init];
        _mammal.name = @"Принцесса Бурунди";
        _mammal.imageName = @"princes.png";
        [_array addObject:_mammal];
        _mammal = [[AnimalModel alloc] init];
        _mammal.name = @"Минор";
        _mammal.imageName = @"minor.png";
        [_array addObject:_mammal];
        _mammal = [[AnimalModel alloc] init];
        _mammal.name = @"Королева ньяса";
        _mammal.imageName = @"queen.png";
        [_array addObject:_mammal];
        _mammal = [[AnimalModel alloc] init];
        _mammal.name = @"Телескоп";
        _mammal.imageName = @"teleskop.png";
        [_array addObject:_mammal];
    }
    return self;
}

@end
