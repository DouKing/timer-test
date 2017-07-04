//
//  DemoViewController.m
//  timerTestDemo
//
//  Created by WuYikai on 2017/7/4.
//  Copyright © 2017年 secoo. All rights reserved.
//

#import "DemoViewController.h"

@interface DemoViewController ()

@property (nonatomic, weak) NSTimer *timer;

@end

@implementation DemoViewController

- (void)dealloc {
  NSLog(@"%s", __FUNCTION__);
  [_timer invalidate];
}

- (void)viewDidLoad {
  [super viewDidLoad];
  self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(_test) userInfo:nil repeats:YES];
  [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
}

- (void)_test {
  NSLog(@"%s", __FUNCTION__);
}

@end
