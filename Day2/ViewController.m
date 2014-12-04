//
//  ViewController.m
//  Day2
//
//  Created by Academy387 on 03/12/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import "ViewController.h"
    

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.x
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return  YES;
    
}

- (IBAction)saveAndShowClicked:(id)sender {
    NSString *firstName = self.firstNametf.text;
    NSString *lastName = self.lastNametf.text;
    
    NSString *fullName = [ [NSString alloc] initWithFormat: @"%@, %@", firstName, lastName];
    _result.text = fullName;
}

@end
