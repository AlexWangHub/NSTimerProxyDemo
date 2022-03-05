//
//  ViewController.m
//  NSTimerProxyDemo
//
//  Created by blinblin on 2022/3/5.
//

#import "ViewController.h"
#import "NSButtonViewController.h"
#import "NSTimerViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *timerBtn;
@property (nonatomic, strong) UIButton *openBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.timerBtn];
    [self.view addSubview:self.openBtn];
}

- (UIButton *)timerBtn {
    if (!_timerBtn) {
        _timerBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 150, 50)];
        [_timerBtn setTitle:@"timer页面" forState:UIControlStateNormal];
        [_timerBtn addTarget:self action:@selector(onClickTimerBtn) forControlEvents:UIControlEventTouchUpInside];
    }
    return _timerBtn;
}

- (UIButton *)openBtn {
    if (!_openBtn) {
        _openBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 300, 150, 50)];
        [_openBtn setTitle:@"button页面" forState:UIControlStateNormal];
        [_openBtn addTarget:self action:@selector(onClickOpenBtn) forControlEvents:UIControlEventTouchUpInside];
    }
    return _openBtn;
}

- (void)onClickTimerBtn {
    NSTimerViewController *vc = [[NSTimerViewController alloc] init];
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)onClickOpenBtn {
    NSButtonViewController *vc = [[NSButtonViewController alloc] init];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
