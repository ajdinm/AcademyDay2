//
//  ShowViewController.m
//  Day2
//
//  Created by Academy387 on 04/12/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import "ShowViewController.h"

@interface ShowViewController ()

@end

@implementation ShowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.resultLabel.text = [self.user getFullName];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) setNewUser:(User *)userToShow {
    self.user = userToShow;
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
