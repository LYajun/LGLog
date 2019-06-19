//
//  ViewController.m
//  LGLogDemo
//
//  Created by 刘亚军 on 2018/3/27.
//  Copyright © 2018年 刘亚军. All rights reserved.
//

#import "ViewController.h"
#import "LGLog.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *str = @"错误信息";
    LGLogError(str);
    LGLogWarn(@"警告信息");
}
@end
