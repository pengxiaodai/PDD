//
//  MVVMView.m
//  MVCTest
//
//  Created by admin on 2017/6/29.
//  Copyright © 2017年 pengdandan. All rights reserved.
//

#import "MVVMView.h"
#import "FBKVOController.h"
#import "NSObject+FBKVOController.h"
#import "MVVMViewModel.h"

@interface MVVMView ()

@property (nonatomic ,strong) UILabel* myLabel;

@property (nonatomic ,strong) UIButton* myBtn;

@property (nonatomic ,strong) MVVMViewModel* myViewModel;

@end

@implementation MVVMView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.myLabel = [UILabel new];
        [self addSubview:self.myLabel];
        _myLabel.frame = CGRectMake(0, 100, 300, 30);
        _myLabel.textAlignment = NSTextAlignmentCenter;
        _myLabel.textColor = [UIColor blackColor];

        self.backgroundColor = [UIColor whiteColor];
        
        self.myBtn = [UIButton new];
        _myBtn.frame = CGRectMake(100, 200, 50, 50);
        [_myBtn setTitle:@"点击" forState:UIControlStateNormal];
        _myBtn.backgroundColor = [UIColor redColor];
        [self addSubview:self.myBtn];
        
        [_myBtn addTarget:self action:@selector(onClickBtn) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return self;
}


- (void)setWithViewModel:(MVVMViewModel*)viewmodel
{
    self.myViewModel = viewmodel;
    [self.KVOController observe:viewmodel keyPath:@"contentStr" options:NSKeyValueObservingOptionNew block:^(id observer, id object, NSDictionary *change) {
        
        if (change[NSKeyValueChangeNewKey]) {
            NSString * newContent = change[NSKeyValueChangeNewKey];
            self.myLabel.text = newContent;
        }
        
    }];
}

-(void)onClickBtn
{
    [self.myViewModel onPrintClick];
}


@end
