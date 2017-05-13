//
//  ViewController.m
//  僵尸动画
//
//  Created by Mikez on 2017/4/28.
//  Copyright © 2017年 Mikez. All rights reserved.
//
#import "ZombA.h"
#import "ZombB.h"
#import "ZombC.h"
#import "ZombD.h"
#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong)NSMutableArray *zombs;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.zombs = [NSMutableArray array];
    
    //    for (NSInteger i = 0; i < 100; i++) {
    //        Zomb *z = [[Zomb alloc]initWithFrame:CGRectMake(arc4random()%300, arc4random()%600, 30, 50)];
    //        [z beginAnimation];
    //        [self.view addSubview:z];
    //    }
    
    
    [NSTimer scheduledTimerWithTimeInterval:.1 repeats:YES block:^(NSTimer * _Nonnull timer) {
        
        int type = arc4random()%4;
        Zomb *zomb = nil;
        switch (type) {
            case 0:
                zomb = [[ZombA alloc]initWithFrame:CGRectMake(375, arc4random()%600, 50, 50)];
                break;
            case 1:
                zomb = [[ZombB alloc]initWithFrame:CGRectMake(375, arc4random()%600, 50, 50)];
                break;
            case 2:
                zomb = [[ZombC alloc]initWithFrame:CGRectMake(375, arc4random()%600, 50, 50)];
                break;
            case 3:
                zomb = [[ZombD alloc]initWithFrame:CGRectMake(375, arc4random()%600, 50, 50)];
                break;
        }
        [zomb beginAnimation];
        [self.view addSubview:zomb];
        [self.zombs addObject:zomb];
    }];
    
    
    
    [NSTimer scheduledTimerWithTimeInterval:1.0/60 repeats:YES block:^(NSTimer * _Nonnull timer) {
        
        //forin循环时不能在循环的过程中去修改数组（增加对象和删除）后继续循环
        for (Zomb *z in self.zombs) {
            z.center = CGPointMake(z.center.x-z.speed, z.center.y);
            
            
            if (z.center.x<=0) {
                [z removeFromSuperview];
                //从数组中删除
                [self.zombs removeObject:z];
                break;
            }
        }
        
        
    }];
    
}





@end
