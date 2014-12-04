//
//  User.h
//  Day2
//
//  Created by Academy387 on 04/12/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property NSString *firstName;
@property NSString *lastName;
@property NSInteger yearOfBirth;

- (NSString*) getFullName;
- (void) setUserFirstName : (NSString*)firstName andLastName : (NSString*)lastName;
- (void) setBirthYear : (NSInteger) by;

-(id)initWithFirstName : (NSString*)firstName andLastName:(NSString*)lastName andBirthYear : (NSInteger)by;
- (NSString*) getYearsOld;
@end
