//
//  TitleViewController.m
//  ZOO_DEMO
//
//  Created by Alexandr Kolesnik on 08.05.13.
//  Copyright (c) 2013 vexadev. All rights reserved.
//

#import "TitleViewController.h"

@interface TitleViewController ()

@end

@implementation TitleViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"О зоопарке";
        self.navigationItem.title = @"";
        
      
        
                
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(120, -5, 120, 30)];
    label.text = @"Харьковский";
    label.backgroundColor  = [UIColor clearColor];
    [label setFont:[UIFont fontWithName:@"OpenSans-LightItalic" size:12]];
    label.textColor = [UIColor whiteColor];
    [self.navigationController.navigationBar addSubview:label];
    
    UILabel *labelZoo = [[UILabel alloc]initWithFrame:CGRectMake(140, 15, 90, 30)];
    labelZoo.text = @"зоопарк";
    //[labelZoo setFont:[UIFont fontWithName:@"OpenSans-LightItalic" size:12]];
    labelZoo.textColor = [UIColor whiteColor];
    labelZoo.backgroundColor  = [UIColor clearColor];
    [self.navigationController.navigationBar addSubview:labelZoo];
    
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
