//
//  ViewController.m
//  timerTestDemo
//
//  Created by WuYikai on 2017/7/4.
//  Copyright © 2017年 secoo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  UIViewController *vc = [segue destinationViewController];
  UIButton *btn = (UIButton *)sender;
  vc.navigationItem.title = [btn titleForState:UIControlStateNormal];
}

@end
