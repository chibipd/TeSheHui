//
//  HYAroundMallListViewController.h
//  Teshehui
//
//  Created by HYZB on 14-7-1.
//  Copyright (c) 2014年 HY.Inc. All rights reserved.
//

#import "HYMallViewBaseController.h"
#import "HYTabbarViewController.h"

@interface HYAroundMallListViewController : HYMallViewBaseController
<
UITableViewDelegate
>

- (void)cityBtnAction:(id)sender;
@property (nonatomic, weak) HYTabbarViewController *baseViewController;

@end
