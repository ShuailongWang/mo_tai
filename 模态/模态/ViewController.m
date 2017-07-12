//
//  ViewController.m
//  模态
//
//  Created by admin on 17/6/20.
//  Copyright © 2017年 wsl. All rights reserved.
//

#import "ViewController.h"
#import "WSLPresentedController.h"
#import "WSLPresentedAnimation.h"

#define KScreen_Width  [UIScreen mainScreen].bounds.size.width
#define KScreen_Height  [UIScreen mainScreen].bounds.size.height
#define KScreen_Bounds  [UIScreen mainScreen].bounds

@interface ViewController ()

@property (nonatomic, strong) WSLPresentedAnimation *presentedAnimation;
@property (nonatomic, strong) WSLPresentedController *nextVC;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor grayColor];
    
    self.presentedAnimation = [[WSLPresentedAnimation alloc]init];
    
    self.nextVC = [[WSLPresentedController alloc]init];
}

- (IBAction)clickButton:(UIButton *)sender {
    
    [self.nextVC dismissViewControllerAnimated:YES completion:nil];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    self.nextVC = [[WSLPresentedController alloc]init];
    
    self.nextVC.modalPresentationStyle = UIModalPresentationCustom;
    
    self.nextVC.transitioningDelegate = self.presentedAnimation;
    
    self.presentedAnimation.presentFrame = CGRectMake(0, KScreen_Height/3, KScreen_Width, KScreen_Height - KScreen_Height/3);
    
    [self presentViewController:self.nextVC animated:YES completion:nil];
}


@end
