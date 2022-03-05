//
//  NSTestButton.m
//  NSTimerProxyDemo
//
//  Created by blinblin on 2022/3/5.
//

#import "NSTestButton.h"

@implementation NSTestButton

-(void)dealloc {
    NSLog(@"%@ button dealloc",NSStringFromClass(self.class));
}

@end
