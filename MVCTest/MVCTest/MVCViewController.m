//
//  MVCViewController.m
//  MVCTest
//
//  Created by admin on 2017/3/8.
//  Copyright © 2017年 pengdandan. All rights reserved.
//

#import "MVCViewController.h"
#import "MVCView.h"
#import "MVCModel.h"

@interface MVCViewController ()<MVCViewDelegate>

@property (nonatomic ,strong) MVCView*  myView;
@property (nonatomic ,strong) MVCModel* myModel;

@end

@implementation MVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.myView = [MVCView new];
    _myView.delegate = self;
    self.myView.frame = self.view.bounds;
    [self.view addSubview:_myView];
    
    self.myModel = [MVCModel new];
}


-(void)clickBtnOnPrint
{
    int rand = arc4random()%10;
    _myModel.contentStr = [NSString stringWithFormat:@"%d",rand];
    [_myView printOnView:_myModel];
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
