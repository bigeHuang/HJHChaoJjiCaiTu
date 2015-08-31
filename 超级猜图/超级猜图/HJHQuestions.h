//
//  HJHQuestions.h
//  超级猜图
//
//  Created by 黄建鸿 on 15/8/31.
//  Copyright (c) 2015年 黄建鸿. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HJHQuestions : NSObject

//答案
@property (nonatomic, copy) NSString *answer;

//图片
@property (nonatomic, copy) NSString *icon;

//文字标题
@property (nonatomic, copy) NSString *title;

//备选答案
@property (nonatomic, strong) NSArray *options;

//快速创建模型对象
+ (instancetype)questionWithDict:(NSDictionary *)dict;
- (instancetype)initWithDict:(NSDictionary *)dict;

//返回所有题目

+ (NSArray *)questions;


@end
