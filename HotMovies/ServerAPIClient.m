//
//  ServerAPIClient.m
//  HotMovies
//
//  Created by DaveLam on 16/3/23.
//  Copyright © 2016年 ucas. All rights reserved.
//

#import "ServerAPIClient.h"
#import "MBProgressHUD+AFNetworking.h"

@implementation ServerAPIClient
+(void)postAPI:(NSString *)url withParams:(NSDictionary *)dict withCallback:(void (^)(NSDictionary *, NSError *))blk{
//    if (!dict) {
//        NSError* error=[[NSError alloc] initWithDomain:@"params can not be null" code:-1 userInfo:nil];
//        blk(nil,error);
//    }else{
        NSURLSessionDataTask* task=[[AFServerClient sharedInstance] POST:[urlPrefix stringByAppendingString:url] parameters:dict success:^(NSURLSessionDataTask* task,id json){
            blk(json,nil);
        } failure:^(NSURLSessionDataTask* task,NSError* error){
            blk(nil,error);
        }];
        [[MBProgressHUD networkHUD] setAnimatingWithStateOfTask:task];
        [MBProgressHUD showTextAlertForTaskWithErrorOnCompletion:task];
//    }
}
@end
