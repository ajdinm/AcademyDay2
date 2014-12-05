//
//  UsersViewController.m
//  Day2
//
//  Created by Academy387 on 05/12/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import "UsersViewController.h"

@interface UsersViewController ()

@end

@implementation UsersViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    User *user = [[User alloc] initWithFirstName:@"User 1" andLastName:@"Last 1" andBirthYear:1993];
    User *user1 = [[User alloc] initWithFirstName:@"User 2" andLastName:@"Last 2" andBirthYear:2005];
//    self.users = [[NSArray alloc] initWithObjects: @"User 1", @"User 2", @"User 3", @"User 4", nil];
    self.users = [[NSArray alloc] initWithObjects:user, user1, nil];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.users.count;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell;
    if(indexPath.row % 2 == 0) {
     cell = [tableView dequeueReusableCellWithIdentifier:@"showUser"];
    }
    else {
        cell = [tableView dequeueReusableCellWithIdentifier:@"showUser1"];
    }
    User *tempUser = (User*)[self.users objectAtIndex:indexPath.row];
    cell.textLabel.text = [tempUser getFullName];
    return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
