//
//  ViewController.h
//  Day2
//
//  Created by Academy387 on 03/12/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"

@interface ViewController : UIViewController <UITextFieldDelegate>



@property (weak, nonatomic) IBOutlet UITextField *firstNametf;
@property (weak, nonatomic) IBOutlet UITextField *lastNametf;
@property (weak, nonatomic) IBOutlet UILabel *result;

@property (weak, nonatomic) IBOutlet UITextField *yearOfBirth;
@property (weak, nonatomic) IBOutlet UILabel *yearsVar;
@property User* user;


@end

