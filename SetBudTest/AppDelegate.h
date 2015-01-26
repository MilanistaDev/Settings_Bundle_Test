//
//  AppDelegate.h
//  SetBudTest
//
//  Created by 麻生 拓弥 on 2015/01/23.
//  Copyright (c) 2015年 麻生 拓弥. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

// ViewController を格納する変数
@property (nonatomic) ViewController* delegate;


- (void)setDelegateView:(UIViewController*)delegateData;

@end

