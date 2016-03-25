//
//  ServerAPIClient.h
//  HotMovies
//
//  Created by DaveLam on 16/3/23.
//  Copyright © 2016年 ucas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFServerClient.h"
static NSString* urlPrefix=@"https://api.douban.com/v2/";
@interface ServerAPIClient : NSObject

+(void)postAPI:(NSString*)url withParams:(NSDictionary*)dict withCallback:(void(^)(NSDictionary* dict, NSError* error))blk;

@end
