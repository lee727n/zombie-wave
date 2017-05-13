//
//  ZombC.m
//  僵尸动画
//
//  Created by Mikez on 2017/4/28.
//  Copyright © 2017年 Mikez. All rights reserved.
//

#import "ZombC.h"

@implementation ZombC
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.zombImage = @"zomb_2";
        self.HP = 12;
        self.speed = 2;
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
