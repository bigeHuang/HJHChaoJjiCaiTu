//
//  ViewController.m
//  超级猜图
//
//  Created by 黄建鸿 on 15/8/29.
//  Copyright (c) 2015年 黄建鸿. All rights reserved.
//

#import "ViewController.h"
#import "HJHQuestions.h"

@interface ViewController ()

//答案
@property (weak, nonatomic) IBOutlet UIView *answerView;

//备选
@property (weak, nonatomic) IBOutlet UIView *optionsView;

//所有题目
@property (nonatomic, strong) NSArray *questions;

//当前题目的索引
@property (nonatomic, assign) NSInteger *currentIndex;


@end

@implementation ViewController

//设置状态样式
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

//懒加载数组
-(NSArray *)questions
{
    if (!_questions) {
        _questions = [HJHQuestions questions];
    }
    return _questions;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.currentIndex = -1;
    
    //默认显示第一题
    [self nextTitle];
    
}



- (IBAction)nextTitle {
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
