//
//  STMWeakProxy.h
//  timerTestDemo
//
//  Created by WuYikai on 2017/7/4.
//  Copyright © 2017年 secoo. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface STMWeakProxy : NSProxy

@property (nullable, nonatomic, weak, readonly) id target;

- (instancetype)initWithTarget:(id)target;

@end


NS_ASSUME_NONNULL_END
