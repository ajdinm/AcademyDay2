//
//  ViewController.m
//  Day2
//
//  Created by Academy387 on 03/12/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import "ViewController.h"
#import "ShowViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.x
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqual: @"showUser"]) {
        
        ShowViewController *controller = (ShowViewController*)[segue destinationViewController];
        [controller setNewUser:self.user];
        
    }
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return  YES;
    
}

- (IBAction)saveAndShowClicked:(id)sender {
    
    NSInteger temp = [self.yearOfBirth.text integerValue];
    
    self.user = [[User alloc] initWithFirstName:self.firstNametf.text andLastName:self.lastNametf.text andBirthYear: temp];
                  
    _result.text = [self.user getFullName];
    self.yearsVar.text = [self.user getYearsOld];
    [self performSegueWithIdentifier:@"showUser" sender:self];
    
}
    

@end
