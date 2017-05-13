//
//  ZombD.m
//  僵尸动画
//
//  Created by Mikez on 2017/4/28.
//  Copyright © 2017年 Mikez. All rights reserved.
//

#import "ZombD.h"

@implementation ZombD
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.zombImage = @"zomb_3";
        self.HP = 16;
        self.speed = 2.5;
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
