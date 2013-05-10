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
        _mammal.name = @"Полярный медведь";
        _mammal.imageName = @"Polar Bear_2.png";
        [_animalArray addObject:_mammal];
        _mammal.name = @"Бурый медведь";
        _mammal.imageName = @"220px-Medved_mzoo.png";
        [_animalArray addObject:_mammal];
        _mammal.name = @"Лев";
        _mammal.imageName = @"lion.png";
        [_animalArray addObject:_mammal];
        _mammal.name = @"Тигр";
        _mammal.imageName = @"tiger.png";
        [_animalArray addObject:_mammal];
        _mammal.name = @"Мангуст";
        _mammal.imageName = @"mangust.png";
        [_animalArray addObject:_mammal];
        _mammal.name = @"Выдра";
        _mammal.imageName = @"vidra.png";
        [_animalArray addObject:_mammal];
        
        mammals = [NSArray arrayWithArray:_animalArray];
        [_animalArray removeAllObjects];
        
        _mammal.name = @"Журавль индийский";
        _mammal.imageName = @"Sarus.png";
        [_animalArray addObject:_mammal];
        _mammal.name = @"Цапля серая";
        _mammal.imageName = @"caplya.png";
        [_animalArray addObject:_mammal];
        _mammal.name = @"Гуси-сухоносы";
        _mammal.imageName = @"goose.png";
        [_animalArray addObject:_mammal];
        _mammal.name = @"Пеганки";
        _mammal.imageName = @"peganki.png";
        [_animalArray addObject:_mammal];
        _mammal.name = @"Павлин";
        _mammal.imageName = @"pavlin.png";
        [_animalArray addObject:_mammal];
        _mammal.name = @"Ара гибридный";
        _mammal.imageName = @"ara.png";
        [_animalArray addObject:_mammal];
        
        birds  = [NSArray arrayWithArray:_animalArray];
        [_animalArray removeAllObjects];
        
        _mammal.name = @"Варан";
        _mammal.imageName = @"Varan.png";
        [_animalArray addObject:_mammal];
        _mammal.name = @"Водяная агама";
        _mammal.imageName = @"agama.png";
        [_animalArray addObject:_mammal];
        _mammal.name = @"Сетчатый питон";
        _mammal.imageName = @"pyton.png";
        [_animalArray addObject:_mammal];
        _mammal.name = @"Кайманы";
        _mammal.imageName = @"kayman.png";
        [_animalArray addObject:_mammal];
        _mammal.name = @"Василиск";
        _mammal.imageName = @"vasylysk.png";
        [_animalArray addObject:_mammal];
        _mammal.name = @"Питон тигровый";
        _mammal.imageName = @"pitonTygroviy.png";
        [_animalArray addObject:_mammal];
        
        reptiles  = [NSArray arrayWithArray:_animalArray];
        [_animalArray removeAllObjects];
        
        _mammal.name = @"Красноголовая";
        _mammal.imageName = @"redhead.png";
        [_animalArray addObject:_mammal];
        _mammal.name = @"Золотой гурами";
        _mammal.imageName = @"zolotaya.png";
        [_animalArray addObject:_mammal];
        _mammal.name = @"Принцесса Бурунди";
        _mammal.imageName = @"princes.png";
        [_animalArray addObject:_mammal];
        _mammal.name = @"Минор";
        _mammal.imageName = @"minor.png";
        [_animalArray addObject:_mammal];
        _mammal.name = @"Королева ньяса";
        _mammal.imageName = @"queen.png";
        [_animalArray addObject:_mammal];
        _mammal.name = @"Телескоп";
        _mammal.imageName = @"teleskop.png";
        [_animalArray addObject:_mammal];
        
        fish  = [NSArray arrayWithArray:_animalArray];
        [_animalArray removeAllObjects];
        [_array arrayByAddingObjectsFromArray: mammals];
        [_array arrayByAddingObjectsFromArray: birds];
        [_array arrayByAddingObjectsFromArray: reptiles];
        [_array arrayByAddingObjectsFromArray:fish];
        self.animals = [NSArray arrayWithArray:_array];
    }
    return self;
}

@end
