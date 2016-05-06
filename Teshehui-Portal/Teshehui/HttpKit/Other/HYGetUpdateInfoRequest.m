//
//  HYGetUpdateInfoRequest.m
//  Teshehui
//
//  Created by 回亿资本 on 14-4-28.
//  Copyright (c) 2014年 HY.Inc. All rights reserved.
//

#import "HYGetUpdateInfoRequest.h"

@interface HYGetUpdateInfoRequest ()

@property (nonatomic, copy) NSString *version_no;  //订单id
@property (nonatomic, copy) NSString *terminal;  //终端类型

@end

@implementation HYGetUpdateInfoRequest

- (id)init
{
    self = [super init];
    
    if (self)
    {
        self.interfaceURL = [NSString stringWithFormat:@"%@/common/getRemoteService.action?httpUrl=%@/%@", kJavaRequestBaseURL, kMallRequestBaseURL, @"api/version/get_version"];
        self.httpMethod = @"POST";
    }
    
    return self;
}

- (NSMutableDictionary *)getJsonDictionary
{
    NSMutableDictionary *newDic = [super getJsonDictionary];
    if (newDic && (NSNull *)newDic != [NSNull null])
    {
//        NSDictionary* infoDict =[[NSBundle mainBundle] infoDictionary];
//        self.version_no =[infoDict objectForKey:@"CFBundleVersion"];
//        
//        if ([self.version_no length] > 0)
//        {
//            
//        }
#warning 该值表示服务器版本号，不对应appstore，从1开始，每次版本发布前需要升级
        [newDic setObject:@"1" forKey:@"version_no"];
        
        //2代表ios
        [newDic setObject:@"2" forKey:@"type"];
    }
    return newDic;
}

- (CQBaseResponse *)getResponseWithInfo:(NSDictionary *)info
{
    HYGetUpdateInfoResponse *respose = [[HYGetUpdateInfoResponse alloc]initWithJsonDictionary:info];
    return respose;
}


@end