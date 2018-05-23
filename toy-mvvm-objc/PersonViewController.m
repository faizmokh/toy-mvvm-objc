//
//  PersonViewController.m
//  toy-mvvm-objc
//
//  Created by Faiz Mokhtar on 22/05/2018.
//  Copyright © 2018 Faiz Mokhtar. All rights reserved.
//

#import "PersonViewController.h"
#import "Person.h"
#import "PersonViewModel.h"

@interface PersonViewController ()

@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *birthDateLabel;

@property (strong, nonatomic) PersonViewModel *viewModel;

@end

@implementation PersonViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
    NSDateComponents *components = [[NSDateComponents alloc] init];
    [components setDay:21];
    [components setMonth:8];
    [components setYear:1992];
    NSCalendar *gregorianCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];

    Person *personModel = [[Person alloc] initWithFirstName:@"Faiz" lastName:@"Mokhtar" birthDate:[gregorianCalendar dateFromComponents:components]];
    self.viewModel = [[PersonViewModel alloc] initWithPerson: personModel];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.nameLabel.text = self.viewModel.nameText;
    self.birthDateLabel.text = self.viewModel.birthDateText;
}

@end
