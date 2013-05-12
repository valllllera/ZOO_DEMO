//
//  AnimalsViewController.h
//  ZOO_DEMO
//
//  Created by Evgeniy Tka4enko on 06.05.13.
//  Copyright (c) 2013 vexadev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataManager.h"


@interface AnimalsViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
{
    
}
@property (weak, nonatomic) IBOutlet UITableView *animalTableView;
@property (strong, nonatomic) DataManager *data;
@property (strong, nonatomic) AnimalModel *model;
@end
