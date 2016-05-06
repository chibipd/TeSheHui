//
//  HYHotelPictureViewController.h
//  Teshehui
//
//  Created by 回亿资本 on 14-2-17.
//  Copyright (c) 2014年 HY.Inc. All rights reserved.
//

/**
 * 酒店的图片列表界面
 */

#import "HYHotelViewBaseController.h"

@interface HYHotelPictureViewController : HYHotelViewBaseController
<
UITableViewDataSource,
UITableViewDelegate
>

@property (nonatomic, strong, readonly) UITableView *tableView;
@property (nonatomic, strong) NSArray *pictureList;

@end