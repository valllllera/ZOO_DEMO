//
//  AnimalInfoViewController.m
//  ZOO_DEMO
//
//  Created by Savva on 13.05.13.
//  Copyright (c) 2013 vexadev. All rights reserved.
//


#import "AnimalInfoViewController.h"

@interface AnimalInfoViewController ()

@end

@implementation AnimalInfoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    
    }
    return self;
}

-(id)initWithAnimalModel:(AnimalModel *)animal
{
    self = [super init];
    if(self)
    {
        self.mammal = animal;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _nameLabel.text = _mammal.name;
    _imageView.image = [UIImage imageNamed:_mammal.imageName];
     // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
