//
//  AFServerClient.m
//  HotMovies
//
//  Created by DaveLam on 16/3/23.
//  Copyright © 2016年 ucas. All rights reserved.
//

#import "AFServerClient.h"

@implementation AFServerClient
+(instancetype)sharedInstance{
    static AFServerClient* client;
    static dispatch_once_t token;
    dispatch_once(&token,^(){
        client=[[AFServerClient alloc] init];
    });
    return client;
}
@end
