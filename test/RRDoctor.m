//
//  RRDoctor.m
//  test
//
//  Created by Roman on 11/7/14.
//  Copyright (c) 2014 Rechich. All rights reserved.
//

#import "RRDoctor.h"
#import "RRGovernment.h"

@implementation RRDoctor

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
        [nc addObserver:self
               selector:@selector(salaryDidChangeNotification:)
                   name:RRGovernmentSalaryDidChangeNotification
                 object:nil];
        
    }
    return self;
}


- (void)salaryDidChangeNotification:(NSNotification *)notification {
    NSNumber *value = [notification.userInfo objectForKey:RRGovernmentSalaryUserInfoKey];
    CGFloat salary = [value floatValue];
    if (salary < self.salary) {
        NSLog(@"Doctors are unhappy");
    } else {
        NSLog(@"Doctors are happy");
    }
    self.salary = [value floatValue];
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


@end
