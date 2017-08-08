//
//  Presenter.m
//  MVCTest
//
//  Created by admin on 2017/6/28.
//  Copyright © 2017年 pengdandan. All rights reserved.
//

#import "Presenter.h"

@interface Presenter ()<MVPViewDelegate>

@end

@implementation Presenter

- (void)printTask
{
    self.mvpView.delegate = self;
    
    //调用view，并把model的东西传给它。
    NSString* printContent = _mvpModel.contentStr;
    [_mvpView printOnView:printContent];

}

-(void)clickBtnOnPrint
{
    int rand = arc4random()%10;
    self.mvpModel.contentStr = [NSString stringWithFormat:@"%d",rand];
    [self.mvpView printOnView:self.mvpModel.contentStr];
}

@end
