//
//  ViewController.m
//  RegularExpressionsTest
//
//  Created by zhaohaifang on 2017/3/15.
//  Copyright © 2017年 ghost__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSString *str = @"4444就是健康或lhjkl1*!3@#$%^&*:;'/?.><}{][|~`-+)(";
    NSError *error = NULL;
    
    NSRegularExpression *usernameRegular = [NSRegularExpression regularExpressionWithPattern:@"[\u4E00-\u9FA5a-z]+[0-9]+" options:NSRegularExpressionCaseInsensitive error:&error];//一串中文(>=1)后面跟着一串小写字母(>=1)再跟着一串数字(>=1)
    
    NSTextCheckingResult *usernameResult = [usernameRegular firstMatchInString:str options:0 range:NSMakeRange(0, str.length)];
    
    NSString *username = [str substringWithRange:usernameResult.range];//截取字符串
    
    NSLog(@"%@",username);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
