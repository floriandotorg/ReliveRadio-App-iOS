//
//  RRChooseChannelTableViewController.m
//  ReliveRadio
//
//  Created by Florian Kaiser on 09.12.13.
//  Copyright (c) 2013 ReliveRadio. All rights reserved.
//

#import "RRChooseChannelTableViewController.h"

#import "RRChannel.h"
#import "RRChannelCell.h"
#import "RRPlayerViewController.h"

@interface RRChooseChannelTableViewController ()

@property (strong, nonatomic) NSArray *channelArray;

@end

@implementation RRChooseChannelTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.channelArray = @[
                          [[RRChannel alloc] initWithName:@"Mix"
                                                 andColor:[UIColor colorWithRed:0.525 green:0.729 blue:0 alpha:1]
                                         andSelectedColor:[UIColor colorWithRed:0.239 green:0.329 blue:0 alpha:1]],
                          
                          [[RRChannel alloc] initWithName:@"Technik"
                                                 andColor:[UIColor colorWithRed:0.286 green:0.682 blue:0.753 alpha:1]
                                         andSelectedColor:[UIColor colorWithRed:0.165 green:0.427 blue:0.475 alpha:1]],
                          
                          [[RRChannel alloc] initWithName:@"Kultur"
                                                 andColor:[UIColor colorWithRed:0.996 green:0.353 blue:0.153 alpha:1]
                                         andSelectedColor:[UIColor colorWithRed:0.745 green:0.18 blue:0.004 alpha:1]]
                          ];
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.channelArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return self.tableView.bounds.size.height / (CGFloat)self.channelArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    RRChannelCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    [cell setChannel:self.channelArray[indexPath.row]];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.tabBarController.selectedIndex = 1;
    [(RRPlayerViewController*)self.tabBarController.selectedViewController setChannel:self.channelArray[indexPath.row]];
}

@end
