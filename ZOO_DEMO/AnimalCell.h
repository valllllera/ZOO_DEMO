//
//  AnimalCell.h
//  ZOO_DEMO
//
//  Created by Alexandr Kolesnik on 08.05.13.
//  Copyright (c) 2013 vexadev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AnimalModel.h"

@interface AnimalCell : UITableViewCell

@property (retain, nonatomic) IBOutlet UIImageView *imageView;
@property (retain, nonatomic) IBOutlet UILabel *nameLabel;

@end