//
//  Demo2ViewController.m
//  timerTestDemo
//
//  Created by WuYikai on 2017/7/4.
//  Copyright © 2017年 secoo. All rights reserved.
//

#import "Demo2ViewController.h"
#import "STMWeakProxy.h"

@interface Demo2ViewController ()

@property (nonatomic, weak) NSTimer *timer;

@end

@implementation Demo2ViewController

- (void)dealloc {
  NSLog(@"%s", __FUNCTION__);
  [_timer invalidate];
}

- (void)viewDidLoad {
  [super viewDidLoad];
  STMWeakProxy *weakProxy = [[STMWeakProxy alloc] initWithTarget:self];
  self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:weakProxy selector:@selector(_test) userInfo:nil repeats:YES];
  [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
}

- (void)_test {
  NSLog(@"%s", __FUNCTION__);
}

@end
