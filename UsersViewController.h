//
//  UsersViewController.h
//  Day2
//
//  Created by Academy387 on 05/12/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"

@interface UsersViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property NSArray *users;

@end
