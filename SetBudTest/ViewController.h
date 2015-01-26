//
//  ViewController.h
//  SetBudTest
//
//  Created by 麻生 拓弥 on 2015/01/23.
//  Copyright (c) 2015年 麻生 拓弥. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *server_addressLabel;
@property (weak, nonatomic) IBOutlet UILabel *port_numberLabel;
@property (weak, nonatomic) IBOutlet UILabel *send_dataLabel;

// 外部から使えるように
-(void)load;

@end

