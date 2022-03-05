//
//  NSTimerViewController.h
//  NSTimerProxyDemo
//
//  Created by blinblin on 2022/3/5.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol NSTimerViewControllerDelegate <NSObject>

- (void)onClickTimerAction;

@end

@interface NSTimerViewController : UIViewController

@property (nonatomic, weak) id<NSTimerViewControllerDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
