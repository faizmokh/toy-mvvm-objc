//
//  Person.m
//  toy-mvvm-objc
//
//  Created by Faiz Mokhtar on 22/05/2018.
//  Copyright © 2018 Faiz Mokhtar. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName birthDate:(NSDate *)birthDate
{
    self.firstName = firstName;
    self.lastName = lastName;
    self.birthDate = birthDate;

    return self;
}
@end
