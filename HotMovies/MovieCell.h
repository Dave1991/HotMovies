//
//  MovieCell.h
//  HotMovies
//
//  Created by DaveLam on 16/3/18.
//  Copyright © 2016年 ucas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Movie.h"

@interface MovieCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *director;
@property (weak, nonatomic) IBOutlet UILabel *date;
@property (weak, nonatomic) IBOutlet UILabel *actors;
@property (weak, nonatomic) IBOutlet UILabel *rating;
@property (weak, nonatomic) IBOutlet UIView *shadow_view;
@property (weak, nonatomic) IBOutlet UIImageView *cover;
@property (weak, nonatomic) IBOutlet UIView *container_view;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *actor_height_constraint;
@property (weak, nonatomic) IBOutlet UILabel *seen_label;
+(NSInteger)getCellHeight;
-(void)setCellContent:(Movie*)movie;
@end
