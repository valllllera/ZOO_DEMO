//
//  InfoViewController.m
//  ZOO_DEMO
//
//  Created by Evgeniy Tka4enko on 06.05.13.
//  Copyright (c) 2013 vexadev. All rights reserved.
//

#import "InfoViewController.h"
#import "QRViewController.h"

@interface InfoViewController ()

@end

@implementation InfoViewController

#pragma mark - View lifecircle

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _aboutScrollView.contentSize = CGSizeMake(320.0f, 1115.0f);
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Public

#pragma mark - Private
-(void)backButtonClick
{
    QRViewController *qRViewController = [[QRViewController alloc]init];
    [UIView animateWithDuration:0.75
                     animations:^{
                         [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
                         [self.navigationController pushViewController:qRViewController animated:NO];
                         [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.navigationController.view cache:NO];
                     }];
}

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
