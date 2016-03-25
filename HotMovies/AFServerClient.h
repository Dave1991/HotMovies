//
//  AFServerClient.h
//  HotMovies
//
//  Created by DaveLam on 16/3/23.
//  Copyright © 2016年 ucas. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

@interface AFServerClient : AFHTTPSessionManager
+(instancetype)sharedInstance;
@end
