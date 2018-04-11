//
//  ViewController.m
//  LM_ARC
//
//  Created by lm@linghang on 2018/3/14.
//  Copyright © 2018年 lm@linghang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    NSString str;
    
    __autoreleasing id obj = [[NSObject alloc]init];
    
    

    self.view.backgroundColor=[UIColor whiteColor];
    
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 375, 667)];
    scrollView.backgroundColor=[UIColor cyanColor];
    scrollView.contentSize= CGSizeMake(375*3, 0);
    [self.view addSubview:scrollView];
    

       
       NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1.0 repeats:YES block:^(NSTimer * _Nonnull timer) {
            
            NSLog(@"123");
            
        }];
        
        [[NSRunLoop currentRunLoop]addTimer:timer forMode:NSRunLoopCommonModes];
 
    
 
//    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1.0 repeats:YES block:^(NSTimer * _Nonnull timer) {
//
//        NSLog(@"123");
//
//    }];
    
    
    
    
//    NSTimer *timer = [[NSTimer alloc]initWithFireDate:[NSDate date] interval:1.0 repeats:YES block:^(NSTimer * _Nonnull timer) {
//
//        NSLog(@"123");
//
//    }];
//
//    [[NSRunLoop currentRunLoop]addTimer:timer forMode:NSDefaultRunLoopMode];
    
//    NSTimer *timer1 = [NSTimer scheduledTimerWithTimeInterval:1.0 repeats:YES block:^(NSTimer * _Nonnull timer) {
//
//        NSLog(@"ABC");
//
//    }];
//
//    [[NSRunLoop currentRunLoop]addTimer:timer1 forMode:NSDefaultRunLoopMode];
    
    
    
    
//    [self AutoRelease];
//
//    NSMutableArray *array = [NSMutableArray arrayWithCapacity:1];
//
//    [array addObject:@"1"];
//    NSLog(@"---%@",array);
//
//    [array addObject:@"2"];
//    NSLog(@"+++%@",array);
    
}

//自动释放的用法
-(void)AutoRelease{
    
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
    
    id obj = [[NSObject alloc]init];
    
    NSArray *array = [NSArray array];
    
    NSLog(@"%@",obj);
    
    [array autorelease];
    
    [NSAutoreleasePool showPools];
    
    [pool drain];
    
    NSLog(@"===%@",obj);
    
}


@end
