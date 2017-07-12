//
//  WSLPresentedAnimation.h
//  模态
//
//  Created by admin on 17/6/20.
//  Copyright © 2017年 wsl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WSLPresentedAnimation : NSObject<UIViewControllerTransitioningDelegate>

@property (assign,nonatomic) BOOL isPresented;
@property (assign,nonatomic) CGRect presentFrame;
@property (copy, nonatomic)  void(^callBack)(BOOL isTrue);

@end
