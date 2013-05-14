//
//  AnimalCell.m
//  ZOO_DEMO
//
//  Created by Alexandr Kolesnik on 08.05.13.
//  Copyright (c) 2013 vexadev. All rights reserved.
//

#import "AnimalCell.h"

@implementation AnimalCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


@end
