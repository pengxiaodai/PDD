//
//  MVCView.m
//  MVCTest
//
//  Created by admin on 2017/3/8.
//  Copyright © 2017年 pengdandan. All rights reserved.
//

#import "MVCView.h"

@interface MVCView()

@property (nonatomic ,strong) UIButton* myBtn;

@property (nonatomic ,strong) UILabel* myLabel;

@end

@implementation MVCView

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.backgroundColor = [UIColor yellowColor];
        self.myBtn = [UIButton new];
        _myBtn.frame = CGRectMake(100, 300, 50, 50);
        [_myBtn setTitle:@"点击" forState:UIControlStateNormal];
        _myBtn.backgroundColor = [UIColor redColor];
        [self addSubview:self.myBtn];
        
        [_myBtn addTarget:self action:@selector(onClickBtn) forControlEvents:UIControlEventTouchUpInside];
        
        self.myLabel = [UILabel new];
        _myLabel.frame = CGRectMake(100, 100, 100, 21);
        _myLabel.backgroundColor = [UIColor greenColor];
        _myLabel.textColor = [UIColor blackColor];
        [self addSubview:_myLabel];
        

    }
    return self;
}


-(void)onClickBtn
{
    if ([_delegate respondsToSelector:@selector(clickBtnOnPrint)]) {
        [_delegate clickBtnOnPrint];
    }
}


-(void)printOnView:(MVCModel *)model
{
    _myLabel.text = model.contentStr;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
