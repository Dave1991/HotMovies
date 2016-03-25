//
//  ViewController.m
//  HotMovies
//
//  Created by DaveLam on 16/3/18.
//  Copyright © 2016年 ucas. All rights reserved.
//

#import "ViewController.h"
#import "Movie.h"
#import "MovieCell.h"
#import "ServerAPIClient.h"

@interface ViewController (){
    NSMutableArray* movies;
    int start,end;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    movies=[[NSMutableArray alloc] init];
    [self.movieTableview registerNib:[UINib nibWithNibName:@"MovieCell" bundle:nil] forCellReuseIdentifier:@"MovieCell"];
    start=0,end=0;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [movies count];
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    MovieCell* cell=[tableView dequeueReusableCellWithIdentifier:@"MovieCell" forIndexPath:indexPath];
    [cell setCellContent:movies[indexPath.row]];
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return [MovieCell getCellHeight];
}
-(void)viewWillAppear:(BOOL)animated{
    [ServerAPIClient postAPI:@"movie/in_theaters" withParams:nil withCallback:^(NSDictionary* dict,NSError* error){
        if (!error) {
            start=[dict[@"start"] intValue];
            end=[dict[@"end"] intValue];
            for (NSDictionary* movieDict in dict[@"subjects"]) {
                Movie* movie=[[Movie alloc] init];
                [movie parseFromDict:movieDict];
                [movies addObject:movie];
            }
            [self.movieTableview reloadData];
        }
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
