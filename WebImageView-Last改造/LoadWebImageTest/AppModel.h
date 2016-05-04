//
//  AppModel.h
//  LoadWebImage-Exam
//
//  Created by 鞠凝玮 on 16/1/23.
//  Copyright © 2016年 hzdracom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AppModel : NSObject
@property (nonatomic, copy)NSString *name;
@property (nonatomic, copy)NSString *icon;
@property (nonatomic, copy)NSString *download;

//@property (nonatomic, strong)UIImage *image;

+ (instancetype)modelWithDic:(NSDictionary *)dic;
+ (NSArray *)modelArray;
@end
