//
//  InfoViewController.h
//  ZOO_DEMO
//
//  Created by Evgeniy Tka4enko on 06.05.13.
//  Copyright (c) 2013 vexadev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InfoViewController : UIViewController <UITableViewDelegate , UITableViewDataSource >
{
    
}
@property (weak, nonatomic) IBOutlet UIScrollView *aboutScrollView;
@property (assign,nonatomic)   NSArray *animalArray;


@end
