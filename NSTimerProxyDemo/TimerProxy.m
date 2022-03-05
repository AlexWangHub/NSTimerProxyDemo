//
//  TimerProxy.m
//  NSTimerProxyDemo
//
//  Created by blinblin on 2022/3/5.
//

#import "TimerProxy.h"

@implementation TimerProxy

- (id)forwardingTargetForSelector:(SEL)aSelector {
    return self.target.;
}

@end
