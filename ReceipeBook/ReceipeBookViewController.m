//
//  ReceipeBookViewController.m
//  ReceipeBook
//
//  Created by hydb on 13-5-10.
//  Copyright (c) 2013年 hydb. All rights reserved.
//

#import "ReceipeBookViewController.h"
#import "ReceipeDetailViewController.h"

@interface ReceipeBookViewController ()

@end

@implementation ReceipeBookViewController
{
    NSArray *recipes;
    NSArray *searchResults;
}

@synthesize tableView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    recipes = [NSArray arrayWithObjects:@"egg", @"meat", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(tableView == self.searchDisplayController.searchResultsTableView)
    {
        return [searchResults count];
    }
    else
    {
        return [recipes count];
    }
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"RecipeCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if(cell == nil)
    {
        cell = [ [UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        cell.textLabel.text = [searchResults objectAtIndex:indexPath.row];
    } else {
        cell.textLabel.text = [recipes objectAtIndex:indexPath.row];gg
    }
    return cell;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"showRecipeDetail"])
    {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        ReceipeDetailViewController *destViewController = segue.destinationViewController;
        destViewController.recipeName = [recipes objectAtIndex:indexPath.row];
    }
}


-(void)filterContentForSearchText:(NSString *)searchText scope:(NSString*)scope
{
    NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"SELF contains[CD]%@", searchText];
    searchResults = [recipes filteredArrayUsingPredicate:resultPredicate];
}


-(BOOL)searchDisplayController:(UISearchDisplayController*)controller shouldReloadTableForSearchString:(NSString *)searchString
{
    [self filterContentForSearchText:searchString scope:[ [self.searchDisplayController.searchBar scopeButtonTitles] objectAtIndex:[self.searchDisplayController.searchBar selectedScopeButtonIndex]]];
    return YES;
}



@end



