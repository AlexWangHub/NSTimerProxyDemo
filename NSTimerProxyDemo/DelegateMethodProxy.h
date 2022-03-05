//
//  DelegateMethodProxy.h
//  NSTimerProxyDemo
//
//  Created by blinblin on 2022/3/5.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DelegateMethodProxy : NSObject

+ (instancetype)initWithBlock:(dispatch_block_t)block;

- (void)addClickActionToButton:(UIButton *)view;

@end

NS_ASSUME_NONNULL_END
