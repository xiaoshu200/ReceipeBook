//
//  ReceipeBookViewController.h
//  ReceipeBook
//
//  Created by hydb on 13-5-10.
//  Copyright (c) 2013年 hydb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReceipeBookViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic,strong) IBOutlet UITableView *tableView;

@end
