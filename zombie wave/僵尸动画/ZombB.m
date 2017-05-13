//
//  ZombB.m
//  僵尸动画
//
//  Created by Mikez on 2017/4/28.
//  Copyright © 2017年 Mikez. All rights reserved.
//

#import "ZombB.h"

@implementation ZombB
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.zombImage = @"zomb_1";
        self.HP = 8;
        self.speed = 1.5;
    }
    return self;
}
/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

@end
