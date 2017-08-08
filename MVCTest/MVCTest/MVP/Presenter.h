//
//  Presenter.h
//  MVCTest
//
//  Created by admin on 2017/6/28.
//  Copyright © 2017年 pengdandan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVPModel.h"
#import "MVPView.h"


@interface Presenter : NSObject

@property (nonatomic, strong) MVPView*  mvpView;

@property (nonatomic, strong) MVPModel* mvpModel;

- (void)printTask;


@end
