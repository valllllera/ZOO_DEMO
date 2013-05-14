//
//  QRViewController.m
//  ZOO_DEMO
//
//  Created by Evgeniy Tka4enko on 06.05.13.
//  Copyright (c) 2013 vexadev. All rights reserved.
//

#import "QRViewController.h"
#import "InfoViewController.h"

@interface QRViewController ()

@end

@implementation QRViewController

#pragma mark - View lifecircle

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
       // self.title = @"Сканировать";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(110, -5, 120, 30)];
    label.text = @"Харьковский";
    label.backgroundColor  = [UIColor clearColor];
    [label setFont:[UIFont fontWithName:@"OpenSans-LightItalic" size:12]];
    label.textColor = [UIColor whiteColor];
    [self.navigationController.navigationBar addSubview:label];
    
    UILabel *labelZoo = [[UILabel alloc]initWithFrame:CGRectMake(130, 15, 90, 30)];
    labelZoo.text = @"зоопарк";
    [labelZoo setFont:[UIFont fontWithName:@"OpenSans-LightItalic" size:12]];
    labelZoo.textColor = [UIColor whiteColor];
    labelZoo.backgroundColor  = [UIColor clearColor];
    [self.navigationController.navigationBar addSubview:labelZoo];
    UIButton *infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    [infoButton addTarget:self action:@selector(infoButtonClick)forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:infoButton];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Public

#pragma mark - Private

-(void)infoButtonClick
{
    InfoViewController *infoViewController = [[InfoViewController alloc]init];
    [UIView animateWithDuration:0.75
                     animations:^{
                         [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
                         [self.navigationController pushViewController:infoViewController animated:NO];
                         [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.navigationController.view cache:NO];
                     }];
}

#pragma mark - Actions

@end
