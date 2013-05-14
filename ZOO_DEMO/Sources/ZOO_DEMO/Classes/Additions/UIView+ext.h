//
//  UIView+showhide.h
//  Seo
//
//  Created by Evgeniy Tka4enko on 24.03.13.
//  Copyright (c) 2013 vexadev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ext)

- (void)hide:(BOOL)animated;

- (void)show:(BOOL)animated;

- (void)showLoader:(BOOL)animated;

- (void)hideLoader:(BOOL)animated;

@end
