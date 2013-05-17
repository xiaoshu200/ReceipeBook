//
//  ReceipeDetailViewController.h
//  ReceipeBook
//
//  Created by hydb on 13-5-11.
//  Copyright (c) 2013年 hydb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReceipeDetailViewController : UIViewController

@property (nonatomic, strong) IBOutlet UILabel *recipeLable;
@property (nonatomic, strong) NSString *recipeName;

@end
