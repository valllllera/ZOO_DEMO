//
//  UIView+showhide.m
//  Seo
//
//  Created by Evgeniy Tka4enko on 24.03.13.
//  Copyright (c) 2013 vexadev. All rights reserved.
//

#import "UIView+ext.h"
#import <objc/runtime.h>

@implementation UIView (ext)

- (void)hide:(BOOL)animated
{
    if(self.hidden)
    {
        return;
    }
    if(animated)
    {
        [UIView animateWithDuration:0.4f delay:0.0f options:UIViewAnimationOptionBeginFromCurrentState|UIViewAnimationOptionAllowUserInteraction animations:^{
            self.alpha = 0.0f;
        } completion:^(BOOL finished) {
            if(finished)
            {
                self.hidden = YES;
                self.alpha = 1.0f;
            }
        }];
    }
    else
    {
        self.hidden = YES;
    }
}

- (void)show:(BOOL)animated
{
    if(animated)
    {
        if(self.hidden)
        {
            self.alpha = 0.0f;
            self.hidden = NO;
        }
        
        [UIView animateWithDuration:0.4f delay:0.0f options:UIViewAnimationOptionAllowUserInteraction animations:^{
            self.alpha = 1.0f;
        } completion:nil];
    }
    else
    {
        if(self.hidden)
        {
            self.hidden = NO;
        }
        self.alpha = 1.0f;
    }
}

- (void)showLoader:(BOOL)animated
{
    [self hide:animated];
    
    UIActivityIndicatorView *activityView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
    [activityView startAnimating];
    activityView.frame = CGRectMake(self.frame.origin.x + (self.frame.size.width - 20) / 2, self.frame.origin.y + (self.frame.size.height - 20) / 2, 20, 20);
    activityView.tag = 7;
    activityView.hidden = YES;
    [self.superview addSubview:activityView];
    
    [activityView show:animated];
}

- (void)hideLoader:(BOOL)animated
{
    for(UIView *view in self.superview.subviews)
    {
        if(view.tag == 7 && [view isKindOfClass:[UIActivityIndicatorView class]])
        {
            [view hide:animated];
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 0.4f * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
                [view removeFromSuperview];
            });
        }
    }
    
    [self show:animated];
}

@end
