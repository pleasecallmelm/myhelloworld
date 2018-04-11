//
//  LMViewController.m
//  LM_ARC
//
//  Created by lm@linghang on 2018/3/15.
//  Copyright © 2018年 lm@linghang. All rights reserved.
//

#import "LMViewController.h"

@interface LMViewController ()

@end

@implementation LMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    id obj = [[NSObject alloc]init];
    
    __weak id obj1 = obj;
    
    NSLog(@"%@",obj1);
    
    
    
}

//弱引用不能持有对象实例
//weak修饰符的优点：
//      1.可避免循环引用
//      2.在持有某对象的弱引用时，若该对象被废弃，则此弱引用将自动失效且处于nil被赋值状态
-(void)weakDemo{
    
    __weak id obj = nil;
    
    {
        
        id obj0 = [[NSObject alloc]init];
        
        obj=obj0;
        
        NSLog(@"%@",obj);
        
    }
    NSLog(@"%@",obj);
}

@end
