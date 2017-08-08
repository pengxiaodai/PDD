//
//  MVPView.h
//  MVCTest
//
//  Created by admin on 2017/6/28.
//  Copyright © 2017年 pengdandan. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MVPViewDelegate <NSObject>

-(void)clickBtnOnPrint;

@end

@interface MVPView : UIView

@property (nonatomic ,strong) id<MVPViewDelegate> delegate;

- (void)printOnView:(NSString*)content;

@end
