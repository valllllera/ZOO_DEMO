//
//  AnimalInfoViewController.h
//  ZOO_DEMO
//
//  Created by Savva on 13.05.13.
//  Copyright (c) 2013 vexadev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AnimalsViewController.h"
#import "AnimalModel.h"
#import "DataManager.h"
#import "AnimalModel.h"

@interface AnimalInfoViewController : UIViewController

@property (nonatomic, retain) AnimalModel *mammal;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UITextView *informationTextView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIButton *playButton;

-(id)initWithAnimalModel:(AnimalModel *)animal;

@end
