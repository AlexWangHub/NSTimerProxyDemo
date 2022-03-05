//
//  DelegateMethodProxy.m
//  NSTimerProxyDemo
//
//  Created by blinblin on 2022/3/5.
//

#import "DelegateMethodProxy.h"
#import <objc/runtime.h>

@interface DelegateMethodProxy ()

@property (nonatomic, copy) dispatch_block_t block;

@end

@implementation DelegateMethodProxy

+ (instancetype)initWithBlock:(dispatch_block_t)block {
    DelegateMethodProxy *proxy = [[DelegateMethodProxy alloc] init];
    proxy.block = block;
    return proxy;
}

- (void)addClickActionToButton:(UIButton *)view {
    objc_setAssociatedObject(view, @"DelegateMethodProxy", self, OBJC_ASSOCIATION_RETAIN);
    [view addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
}

- (void)onClick {
    if (self.block) {
        self.block();
    }
}

@end
