//
//  ReceipeDetailViewController.m
//  ReceipeBook
//
//  Created by hydb on 13-5-11.
//  Copyright (c) 2013年 hydb. All rights reserved.
//

#import "ReceipeDetailViewController.h"

@interface ReceipeDetailViewController ()

@end

@implementation ReceipeDetailViewController

@synthesize recipeLable;
@synthesize recipeName;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    recipeLable.text = recipeName;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
