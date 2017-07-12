//
//  WSLPresentedAnimation.m
//  模态
//
//  Created by admin on 17/6/20.
//  Copyright © 2017年 wsl. All rights reserved.
//

#import "WSLPresentedAnimation.h"
#import "WSLPresentationController.h"

@interface WSLPresentedAnimation()

@end

@implementation WSLPresentedAnimation

//MARK: -1,改变弹出view的尺寸
-(UIPresentationController *)presentationControllerForPresentedViewController:(UIViewController *)presented presentingViewController:(UIViewController *)presenting sourceViewController:(UIViewController *)source{

    WSLPresentationController *presetionVC = [[WSLPresentationController alloc]initWithPresentedViewController:presented presentingViewController:presenting];
    presetionVC.myFrame = self.presentFrame;
    
    return presetionVC;
}



@end
