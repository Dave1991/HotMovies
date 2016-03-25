//
//  MovieCell.m
//  HotMovies
//
//  Created by DaveLam on 16/3/18.
//  Copyright © 2016年 ucas. All rights reserved.
//

#import "MovieCell.h"
#import "UIImageView+WebCache.h"


@implementation MovieCell

- (void)awakeFromNib {
    // Initialization code
    _shadow_view.layer.shadowOffset=(CGSize){2,2};
    _shadow_view.layer.shadowRadius=5;
    _shadow_view.layer.shadowOpacity=0.5;
    _shadow_view.layer.shadowColor=[UIColor blackColor].CGColor;
    _container_view.layer.cornerRadius=4;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+(NSInteger)getCellHeight{
    return 150;
}

-(void)setCellContent:(Movie *)movie{
    self.name.text=movie.name;
    [self.cover sd_setImageWithURL:[NSURL URLWithString:movie.coverUrl] placeholderImage:[[UIImage alloc] init]];
    self.date.text=movie.pubdate;
    NSString* directors=@"导演：";
    directors=[directors stringByAppendingString:[movie.director componentsJoinedByString:@", "]];
    self.director.text=directors;
    NSString* actors=@"主演：";
    actors=[actors stringByAppendingString:[movie.casts componentsJoinedByString:@", "]];
    self.actors.text=actors;
    self.actor_height_constraint.constant=[actors boundingRectWithSize:(CGSize){Main_Screen_Width-86,40} options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14]} context:nil].size.height;
    self.rating.text=[NSString stringWithFormat:@"%.1f",movie.rating];
    self.date.text=[NSString stringWithFormat:@"上映：%@",movie.pubdate];
    self.seen_label.text=[NSString stringWithFormat:@"看过：%d人",movie.seen];
}

@end
