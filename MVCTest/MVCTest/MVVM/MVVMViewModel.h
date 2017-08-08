//
//  MVVMViewModel.h
//  MVCTest
//
//  Created by admin on 2017/6/29.
//  Copyright © 2017年 pengdandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVVMModel.h"

@interface MVVMViewModel : NSObject

@property (nonatomic ,strong) NSString* contentStr;

- (void)setWithModel:(MVVMModel*)mymodel;

- (void)onPrintClick;

@end
