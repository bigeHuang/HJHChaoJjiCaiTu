//
//  HJHQueetions.m
//  超级猜图
//
//  Created by 黄建鸿 on 15/8/31.
//  Copyright (c) 2015年 黄建鸿. All rights reserved.
//

#import "HJHQuestions.h"

@implementation HJHQuestions
//快速创建模型对象
+ (instancetype)questionWithDict:(NSDictionary *)dict
{
    return [[self alloc] initWithDict:dict];

}
- (instancetype)initWithDict:(NSDictionary *)dict
{
    if (self = [super init]) {
        
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

//返回所有题目

+ (NSArray *)questions
{
    //过得plist文件的全路径
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"questions.plist" ofType:nil];
   
    //从文件创建数组
    NSArray *questionArray = [NSArray arrayWithContentsOfFile:filePath];
    
    //创建数组模型
    NSMutableArray *questions = [NSMutableArray array];
    for (NSDictionary *dict in questionArray) {
    //字典转模型
        HJHQuestions *question = [HJHQuestions questionWithDict:dict];
    
    //将模型加入到数组中
        [questions addObject:question];
    }
    return questions;
}


@end
