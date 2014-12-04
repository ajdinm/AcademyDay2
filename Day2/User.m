//
//  User.m
//  Day2
//
//  Created by Academy387 on 04/12/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import "User.h"

@implementation User

- (NSString*) getFullName {
    return [ [NSString alloc] initWithFormat: @"%@ %@", self.firstName, self.lastName];
}

- (void) setUserFirstName:(NSString *)firstName andLastName:(NSString *)lastName {
    self.firstName = firstName;
    self.lastName = lastName;
}

- (id) initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName andBirthYear:(NSInteger) birthYear {
    
    self = [super init];
    [self setUserFirstName:firstName andLastName:lastName];
    [self setBirthYear:birthYear];
    return self;
}

- (void) setBirthYear:(NSInteger)by {
    self.yearOfBirth = by;
}

- (NSString*) getYearsOld {
    return [ [NSString alloc] initWithFormat:@"User is %ld years old.", 2014 - (long)self.yearOfBirth];
}

@end