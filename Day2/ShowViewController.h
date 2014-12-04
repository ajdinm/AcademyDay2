//
//  ShowViewController.h
//  Day2
//
//  Created by Academy387 on 04/12/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"

@interface ShowViewController : UIViewController

@property User* user;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
- (void) setNewUser: (User*)userToShow;

@end
