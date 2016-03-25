//
//  Movie.h
//  HotMovies
//
//  Created by DaveLam on 16/3/18.
//  Copyright © 2016年 ucas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Movie : NSObject
@property (nonatomic,strong)NSString* name,*pubdate,*nation,*coverUrl,*descrip,*id;
@property (nonatomic,assign)float rating;
@property (nonatomic,assign)int wantToSee,seen,shortcomCount,commentCount;
@property (nonatomic,strong)NSMutableArray* casts,*pictures,*category,*director;
-(void)parseFromDict:(NSDictionary*)dict;
@end
