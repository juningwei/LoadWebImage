//
//  AppCell.m
//  LoadWebImage-Exam
//
//  Created by 鞠凝玮 on 16/1/23.
//  Copyright © 2016年 hzdracom. All rights reserved.
//

#import "AppCell.h"

static CGFloat kLeftMatgin = 10;
static CGFloat kTopBottomMatgin = 5;


@interface AppCell ()
@end

@implementation AppCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self){
        self.iconImageView= [[UIImageView alloc]initWithFrame:CGRectMake(kLeftMatgin, kTopBottomMatgin, 55, 55)];
        [self.contentView addSubview:self.iconImageView];
        self.nameLabel = [[UILabel alloc]initWithFrame:CGRectMake(70, kTopBottomMatgin, 100, 21)];
        self.nameLabel.textColor = [UIColor blackColor];
        self.nameLabel.textAlignment = NSTextAlignmentLeft;
        self.nameLabel.font = [UIFont systemFontOfSize:13];
        [self.contentView addSubview:self.nameLabel];
        
        
        self.downloadLabel = [[UILabel alloc]initWithFrame:CGRectMake(70, CGRectGetMaxY(self.nameLabel.frame)+5, 100, 21)];
        self.downloadLabel.textAlignment = NSTextAlignmentLeft;

        self.downloadLabel.textColor = [UIColor blackColor];
        self.downloadLabel.font = [UIFont systemFontOfSize:13];
        [self.contentView addSubview:self.downloadLabel];
    }
    return self;
}
@end
