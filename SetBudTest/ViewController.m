//
//  ViewController.m
//  SetBudTest
//
//  Created by 麻生 拓弥 on 2015/01/23.
//  Copyright (c) 2015年 麻生 拓弥. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // AppDelegate 使うよ
    AppDelegate *appdelegate = (AppDelegate *) [[UIApplication sharedApplication] delegate];
    [appdelegate setDelegateView:self];
    
    // 自作関数呼び出し
    [self load];
 }

// 値を取得し，表示する関数
- (void)load {
 
    // インスタンス生成
    NSUserDefaults* userDefaults = [NSUserDefaults standardUserDefaults];
    
    // サーバアドレス取得＆表示
    NSString* server_ad = [userDefaults stringForKey: @"server_address"];
    _server_addressLabel.text = [NSString stringWithFormat:@"%@",server_ad];
    
    // ポート番号取得＆表示
    NSString* port_num = [userDefaults stringForKey: @"port_number"];
    _port_numberLabel.text = [NSString stringWithFormat:@"%@",port_num];
    
    // UISwitch の値取得＆表示
    BOOL uiswitch = [userDefaults boolForKey:@"data_auto"];
    if (uiswitch == YES) {
        _send_dataLabel.text = [NSString stringWithFormat:@"YES"];
    } else {
        _send_dataLabel.text = [NSString stringWithFormat:@"NO"];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
