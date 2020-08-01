//
//  PersonViewModel.m
//  toy-mvvm-objc
//
//  Created by Faiz Mokhtar on 23/05/2018.
//  Copyright © 2018 Faiz Mokhtar. All rights reserved.
//

#import "PersonViewModel.h"

@implementation PersonViewModel

- (instancetype)initWithPerson:(Person *)person
{
    self = [super init];
    if (!self) return nil;

    self.person = person;
    if (person.lastName.length > 0) {
        self.nameText = [NSString stringWithFormat:@"%@ %@", self.person.firstName, self.person.lastName];
    } else {
        self.nameText = [NSString stringWithFormat:@"%@", self.person.firstName];
    }

    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"EEEE MMMM d, yyyy"];
    self.birthDateText = [dateFormatter stringFromDate:self.person.birthDate];

    return self;
}
@end
