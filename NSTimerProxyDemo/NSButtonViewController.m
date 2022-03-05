//
//  NSButtonViewController.m
//  NSTimerProxyDemo
//
//  Created by blinblin on 2022/3/5.
//

#import "NSButtonViewController.h"
#import "NSTestButton.h"

@interface NSButtonViewController ()

@property (nonatomic, strong) NSTestButton *closeBtn;

@end

@implementation NSButtonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    
    [self.view addSubview:self.closeBtn];
}

- (void)dealloc {
    NSLog(@"%@ button",NSStringFromClass(self.class));
}

- (UIButton *)closeBtn {
    if (!_closeBtn) {
        _closeBtn = [[NSTestButton alloc] initWithFrame:CGRectMake(100, 200, 150, 50)];
        [_closeBtn setTitle:@"关闭" forState:UIControlStateNormal];
        [_closeBtn addTarget:self action:@selector(onClickCloseBtn) forControlEvents:UIControlEventTouchUpInside];
    }
    return _closeBtn;
}

- (void)onClickCloseBtn {
    
}

@end
