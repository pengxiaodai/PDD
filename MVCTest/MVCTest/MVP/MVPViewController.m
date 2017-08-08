//
//  MVPViewController.m
//  MVCTest
//
//  Created by admin on 2017/6/28.
//  Copyright © 2017年 pengdandan. All rights reserved.
//

#import "MVPViewController.h"
#import "MVPModel.h"
#import "MVPView.h"
#import "Presenter.h"

@interface MVPViewController ()

@property (nonatomic, strong) Presenter*  presenter;
@property (nonatomic, strong) MVPView* mvpView;
@property (nonatomic, strong) MVPModel* mvpModel;

@end

@implementation MVPViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.presenter = [Presenter new];
    
    self.mvpView = [MVPView  new];
    self.mvpView.frame = self.view.frame;
    [self.view addSubview:self.mvpView];
    
    
    self.mvpModel = [MVPModel new];
    self.mvpModel.contentStr = @"line 0";
    
    self.presenter.mvpView = self.mvpView;
    self.presenter.mvpModel = self.mvpModel;
    
    [self.presenter printTask];
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
