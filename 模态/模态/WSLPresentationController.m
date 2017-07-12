//
//  WSLPresentationController.m
//  模态
//
//  Created by admin on 17/6/20.
//  Copyright © 2017年 wsl. All rights reserved.
//

#import "WSLPresentationController.h"

@interface WSLPresentationController()

@property (nonatomic, strong) UIView *coverView;

@end

@implementation WSLPresentationController

-(void)containerViewWillLayoutSubviews{
    [super containerViewWillLayoutSubviews];
    
    self.presentedView.frame = CGRectMake(0, 0, 100, 100);
    
    [self setupCoverView];


}

- (void)setupCoverView{
    self.coverView = [[UIView alloc]init];
    [self.containerView addSubview:self.coverView];
    
    self.coverView.backgroundColor = [UIColor colorWithWhite:0.8 alpha:0.5];
    self.coverView.frame = self.containerView.bounds;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap)];
    [self.coverView addGestureRecognizer:tap];
}
- (void)tap{
    [self.presentedViewController dismissViewControllerAnimated:YES completion:nil];
}

@end
