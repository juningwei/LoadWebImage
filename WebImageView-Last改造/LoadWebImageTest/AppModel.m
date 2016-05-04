//
//  AppModel.m
//  LoadWebImage-Exam
//
//  Created by 鞠凝玮 on 16/1/23.
//  Copyright © 2016年 hzdracom. All rights reserved.
//

#import "AppModel.h"

@implementation AppModel
+ (instancetype)modelWithDic:(NSDictionary *)dic{
    id obj = [[self alloc]init];
    [obj setValuesForKeysWithDictionary:dic];
    return obj;
}


+ (NSArray *)modelArray{
    NSString *path = [[NSBundle mainBundle]pathForResource:@"apps" ofType:@"plist"];
//    NSData *data = [NSData dataWithContentsOfFile:path];
    NSArray *array = [NSArray arrayWithContentsOfFile:path];
    NSMutableArray *modelArray = [NSMutableArray new];
    for (NSDictionary *dic in array){
        id obj = [self modelWithDic:dic];
        [modelArray addObject:obj];
    }
    return modelArray.copy;
}
@end
