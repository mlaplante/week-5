//
//  LPDynamicTableViewController.m
//  Storyboard
//
//  Created by Michael La Plante on 9/21/13.
//  Copyright (c) 2013 Michael La Plante. All rights reserved.
//

#import "LPDynamicTableViewController.h"

@interface LPDynamicTableViewController ()

@end

@implementation LPDynamicTableViewController

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 10;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return (10 - section);
}

- (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    return [NSString stringWithFormat:@"Section %d", section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"dyncamicCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                       reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"Section: %d Row: %d Sum: %d Product: %d", indexPath.section, indexPath.row, (indexPath.section+indexPath.row), (indexPath.section*indexPath.row)];
    
    return cell;
}

@end
