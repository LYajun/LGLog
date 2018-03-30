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
    LGLogError(@"错了");
    LGLogWarn(@"警告了");
    LGLogInfo([[LGLogManager shareInstence].getLogPath firstObject]);
    LGLogInfo([LGLogManager shareInstence].getCurrentLogPath);
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
     LGLogDebug(@"警告了");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
