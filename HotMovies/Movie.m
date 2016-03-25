//
//  Movie.m
//  HotMovies
//
//  Created by DaveLam on 16/3/18.
//  Copyright © 2016年 ucas. All rights reserved.
//

#import "Movie.h"

@implementation Movie
-(void)parseFromDict:(NSDictionary*)dict{
    self.name=dict[@"title"];
    self.rating=[dict[@"rating"][@"average"] floatValue];
    self.director=[[NSMutableArray alloc] init];
    for (NSDictionary* dir in dict[@"directors"]) {
        [self.director addObject:dir[@"name"]];
    }
//    self.director=dict[@"directors"];
    self.nation=dict[@"nation"];
    self.casts=[NSMutableArray new];
    for (NSDictionary* cast in dict[@"casts"]) {
        [self.casts addObject:cast[@"name"]];
    }
//    self.casts=dict[@"casts"];
    self.shortcomCount=[dict[@"comments_count"] intValue];
    self.commentCount=[dict[@"reviews_count"] intValue];
    self.category=dict[@"genres"];
    self.descrip=dict[@"summary"];
    self.id=dict[@"id"];
    self.coverUrl=dict[@"images"][@"small"];
    self.pictures=dict[@"photos"];
    self.wantToSee=[dict[@"wish_count"] intValue];
    self.seen=[dict[@"collect_count"] intValue];
    self.pubdate=dict[@"mainland_pubdate"];
}
@end
