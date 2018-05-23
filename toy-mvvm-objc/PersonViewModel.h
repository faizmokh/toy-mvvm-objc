//
//  PersonViewModel.h
//  toy-mvvm-objc
//
//  Created by Faiz Mokhtar on 23/05/2018.
//  Copyright © 2018 Faiz Mokhtar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface PersonViewModel : NSObject

- (instancetype)initWithPerson:(Person *)person;

@property (nonatomic, strong) Person *person;
@property (nonatomic, strong) NSString *nameText;
@property (nonatomic, strong) NSString *birthDateText;

@end
