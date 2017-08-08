//
//  ViewController.m
//  MVCTest
//
//  Created by admin on 2017/3/8.
//  Copyright © 2017年 pengdandan. All rights reserved.
//

#import "ViewController.h"
#import "MVCViewController.h"
#import "MVPViewController.h"
#import "MVVMViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
           [self showMVVM];
    });
}


-(void)showMVC
{
    MVCViewController* c = [MVCViewController new];
    [self presentViewController:c animated:YES completion:^{
        NSLog(@"推出第一个视图");
    }];
}

-(void)showMVP
{
    MVPViewController* c = [MVPViewController new];
    [self presentViewController:c animated:YES completion:^{
        NSLog(@"推出第二个视图");
    }];
}

-(void)showMVVM
{
    MVVMViewController* c = [MVVMViewController new];
    [self presentViewController:c animated:YES completion:^{
        NSLog(@"推出第二个视图");
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
