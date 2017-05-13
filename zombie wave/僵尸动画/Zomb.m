//
//  Zomb.m
//  僵尸动画
//
//  Created by Mikez on 2017/4/28.
//  Copyright © 2017年 Mikez. All rights reserved.
//

#import "Zomb.h"

@implementation Zomb

-(void)beginAnimation{
    
    UIImage *zombImage = [UIImage imageNamed:self.zombImage];
    
    NSMutableArray *zombImages = [NSMutableArray array];
    
    float w = zombImage.size.width/8;
    float h = zombImage.size.height;
    
    for (NSInteger i = 0; i < 8; i++) {
        CGImageRef subImage = CGImageCreateWithImageInRect(zombImage.CGImage, CGRectMake(i*w, 0, w, h));
        UIImage *image = [UIImage imageWithCGImage:subImage];
        [zombImages addObject:image];
        //释放图片资源
        CGImageRelease(subImage);
    }
    
 
    //开启每个僵尸的动画
    self.animationImages = zombImages;
    self.animationDuration = 1;
    self.animationRepeatCount = 0;
    [self startAnimating];
    
    
}
/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

@end
