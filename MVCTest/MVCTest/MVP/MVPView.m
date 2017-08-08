//
//  MVPView.m
//  MVCTest
//
//  Created by admin on 2017/6/28.
//  Copyright © 2017年 pengdandan. All rights reserved.
//

#import "MVPView.h"

@interface MVPView ()

@property (nonatomic ,strong) UILabel* myLabel;

@property (nonatomic ,strong) UIButton* myBtn;

@end

@implementation MVPView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.myLabel = [UILabel new];
        [self addSubview:self.myLabel];
        _myLabel.frame = CGRectMake(0, 100, 300, 30);
        _myLabel.textAlignment = NSTextAlignmentCenter;
        _myLabel.textColor = [UIColor blackColor];
        
        self.backgroundColor = [UIColor greenColor];
        
        
        self.myBtn = [UIButton new];
        _myBtn.frame = CGRectMake(100, 200, 50, 50);
        [_myBtn setTitle:@"点击" forState:UIControlStateNormal];
        _myBtn.backgroundColor = [UIColor redColor];
        [self addSubview:self.myBtn];
        
        [_myBtn addTarget:self action:@selector(onClickBtn) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return self;
}

-(void)onClickBtn
{
    if ([_delegate respondsToSelector:@selector(clickBtnOnPrint)]) {
        [_delegate clickBtnOnPrint];
    }
}

- (void)printOnView:(NSString*)content
{
    _myLabel.text = content;
}

@end
