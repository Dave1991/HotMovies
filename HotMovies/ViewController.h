//
//  ViewController.h
//  HotMovies
//
//  Created by DaveLam on 16/3/18.
//  Copyright © 2016年 ucas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *movieTableview;

@end

