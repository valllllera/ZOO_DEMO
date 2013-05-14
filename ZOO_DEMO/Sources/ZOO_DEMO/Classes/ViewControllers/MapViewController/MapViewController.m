//
//  MapViewController.m
//  ZOO_DEMO
//
//  Created by Evgeniy Tka4enko on 06.05.13.
//  Copyright (c) 2013 vexadev. All rights reserved.
//

#import "MapViewController.h"
#import "InfoViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

#pragma mark - View lifecircle

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
     //   self.tabBarItem.image= [UIImage imageNamed:@"tabbar_map"];
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
    
    _map.userInteractionEnabled = YES;
    
    _twoFingerPinch = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(twoFingerPinch:)];
    [_map addGestureRecognizer:_twoFingerPinch];
    
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self                                                                                   action:@selector(pan:)];
    [_map addGestureRecognizer:panGesture];
    
}

- (void)twoFingerPinch:(UIPinchGestureRecognizer *)recognizer
{
    if((recognizer.scale > 0.9f) && (recognizer.scale < 1.6f))
    {
        CGAffineTransform transform = CGAffineTransformMakeScale(recognizer.scale, recognizer.scale);
        _map.transform = transform;
    }
    /*else
    {
        CGAffineTransform transform = CGAffineTransformMakeScale(recognizer.scale * 0.75, recognizer.scale * 0.75);
        _map.transform = transform;
    }*/
}

- (void)pan:(UIPanGestureRecognizer *)recog
{
    NSLog(@"asd");
    if (recog.state == UIGestureRecognizerStateChanged)
    {
        CGPoint translation = [recog translationInView:_map];
        CGRect currentFrame = _map.frame;
        currentFrame.origin.x = _map.frame.origin.x + translation.x;
        currentFrame.origin.y = _map.frame.origin.y + translation.y;
        if ((currentFrame.origin.x < 260) && (currentFrame.origin.x > -100) && (currentFrame.origin.y > -80) && (currentFrame.origin.y < 270))
        {
            _map.frame = currentFrame;
        }
        
        [recog setTranslation:CGPointZero inView:_map.superview];
    }
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
