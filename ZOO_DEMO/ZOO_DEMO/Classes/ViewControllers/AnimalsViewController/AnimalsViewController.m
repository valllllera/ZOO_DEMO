//
//  AnimalsViewController.m
//  ZOO_DEMO
//
//  Created by Evgeniy Tka4enko on 06.05.13.
//  Copyright (c) 2013 vexadev. All rights reserved.
//

#import "AnimalsViewController.h"
#import "AnimalCell.h"
#import "InfoViewController.h"
#import "AnimalInfoViewController.h"

@interface AnimalsViewController ()

@end

@implementation AnimalsViewController

#pragma mark - View lifecircle

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
      //  self.title = @"Животные";
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

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"AnimalCell";
    
    AnimalCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"AnimalCell" owner:nil options:nil]objectAtIndex:0];
    }
    _model = [[DataManager sharedInstance].array objectAtIndex: indexPath.row + (indexPath.section * 6)];
    cell.nameLabel.text = _model.name;
    cell.imageView.image = [UIImage imageNamed:_model.imageName];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    AnimalInfoViewController *animalInfoViewController = [[AnimalInfoViewController alloc] initWithAnimalModel: [[DataManager sharedInstance].array  objectAtIndex:indexPath.row + indexPath.section * 6]];
    
    [self.navigationController pushViewController:animalInfoViewController animated:YES];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}

-(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section == 0)
        return @"Млекопитающие";
    
    if (section == 1) {
        return @"Птицы";
    }
    
    if (section == 2) {
        return @"Рептилии" ;
    }
    
    if (section == 3) {
        return @"Рыбы";
    }
    
    return @"Bad section";
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 97.0f;
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