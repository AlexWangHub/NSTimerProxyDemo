//
//  TimerProxy.h
//  NSTimerProxyDemo
//
//  Created by blinblin on 2022/3/5.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TimerProxy : NSObject

@property (nonatomic, weak) id target;

@end

NS_ASSUME_NONNULL_END
