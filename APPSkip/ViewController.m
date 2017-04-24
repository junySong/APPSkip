//
//  ViewController.m
//  APPSkip
//
//  Created by sy on 2017/4/24.
//  Copyright © 2017年 Juny. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonClick:(UIButton *)sender {
    
    NSURL *url = [NSURL URLWithString:@"APPSkip://RedVC" ];
    if ([[UIDevice currentDevice].systemVersion floatValue]>=10.0) {
        
        [[UIApplication sharedApplication]openURL:url options:@{} completionHandler:^(BOOL success) {
            
        }];
    }else{
        if ([[UIApplication sharedApplication] canOpenURL:url]) {
            [[UIApplication sharedApplication] openURL:url];
        }
    }

}

@end
