//
//  MVVMViewController.m
//  MVCTest
//
//  Created by admin on 2017/6/29.
//  Copyright © 2017年 pengdandan. All rights reserved.
//

#import "MVVMViewController.h"
#import "MVVMView.h"
#import "MVVMModel.h"
#import "MVVMViewModel.h"

@interface MVVMViewController ()

@property (nonatomic ,strong) MVVMView*  myView;
@property (nonatomic ,strong) MVVMModel* myModel;
@property (nonatomic ,strong) MVVMViewModel* myViewModel;

@end

@implementation MVVMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myModel = [MVVMModel new];
    self.myModel.contentStr = @"line 0";
   
    self.myViewModel = [MVVMViewModel new];
    
    self.myView = [MVVMView new];
    self.myView.frame = self.view.bounds;
    [self.view addSubview:self.myView];
    
    [self.myView setWithViewModel:self.myViewModel];
    [self.myViewModel setWithModel:self.myModel];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
