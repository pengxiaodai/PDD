//
//  MVVMViewModel.m
//  MVCTest
//
//  Created by admin on 2017/6/29.
//  Copyright © 2017年 pengdandan. All rights reserved.
//

#import "MVVMViewModel.h"
#import "FBKVOController.h"

@interface MVVMViewModel ()

@property (nonatomic, strong) MVVMModel* mymodel;

@end

@implementation MVVMViewModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)setWithModel:(MVVMModel*)mymodel
{
    self.mymodel = mymodel;
    NSLog(@"111");
    self.contentStr = mymodel.contentStr;
}

- (void)onPrintClick
{
    int rand = arc4random()%10;
    self.mymodel.contentStr = [NSString stringWithFormat:@"%d",rand];
    self.contentStr = self.mymodel.contentStr;
}
@end
