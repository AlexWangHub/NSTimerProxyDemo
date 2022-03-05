//
//  NSTimerViewController.m
//  NSTimerProxyDemo
//
//  Created by blinblin on 2022/3/5.
//

#import "NSTimerViewController.h"
#import "TimerProxy.h"
#import "DelegateMethodProxy.h"

@interface NSTimerViewController ()

@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, strong) TimerProxy *timerProxy;
@property (nonatomic, strong) UIButton *closeBtn;

@end

@implementation NSTimerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];
    
    [self.view addSubview:self.closeBtn];
    
    //实现
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self.timerProxy selector:@selector(showMsg) userInfo:nil repeats:YES];
    
}

- (void)dealloc {
    NSLog(@"%@ button",NSStringFromClass(self.class));
    [self.timer invalidate];
    self.timer = nil;
}

- (void)showMsg {
    NSLog(@"showMsg");
}

- (TimerProxy *)timerProxy {
    if (!_timerProxy) {
        _timerProxy = [[TimerProxy alloc] init];
        _timerProxy.target = self;
    }
    return _timerProxy;
}

- (UIButton *)closeBtn {
    if (!_closeBtn) {
        _closeBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 150, 50)];
        [_closeBtn setTitle:@"关闭" forState:UIControlStateNormal];
        [[DelegateMethodProxy initWithBlock:^{
            if (self.delegate && [self.delegate conformsToProtocol:@protocol(NSTimerViewControllerDelegate)]) {
                [self.delegate onClickTimerAction];
            }
        }] addClickActionToButton:_closeBtn];
        [_closeBtn addTarget:self action:@selector(onClickCloseBtn) forControlEvents:UIControlEventTouchUpInside];
    }
    return _closeBtn;
}

- (void)onClickCloseBtn {
//    if (self.delegate && [self.delegate conformsToProtocol:@protocol(NSTimerViewControllerDelegate)]) {
//        [self.delegate onClickTimerAction];
//    }
    
    //    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
