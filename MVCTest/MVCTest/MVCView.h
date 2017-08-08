//
//  MVCView.h
//  MVCTest
//
//  Created by admin on 2017/3/8.
//  Copyright © 2017年 pengdandan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MVCModel.h"

@protocol MVCViewDelegate <NSObject>

-(void)clickBtnOnPrint;

@end

@interface MVCView : UIView

@property (nonatomic ,strong) id<MVCViewDelegate> delegate;


- (void)printOnView:(MVCModel*)model;

@end
