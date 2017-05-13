//
//  Zomb.h
//  僵尸动画
//
//  Created by Mikez on 2017/4/28.
//  Copyright © 2017年 Mikez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Zomb : UIImageView
@property (nonatomic, copy)NSString *zombImage;
@property (nonatomic)int HP;
@property (nonatomic)float speed;

- (void)beginAnimation;

@end
