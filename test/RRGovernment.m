//
//  RRGovernment.m
//  test
//
//  Created by Roman on 11/7/14.
//  Copyright (c) 2014 Rechich. All rights reserved.
//

#import "RRGovernment.h"


NSString *const RRGovernmentTaxLevelDidChangeNotification = @"RRGovernmentTaxLevelDidChangeNotification";
NSString *const RRGovernmentSalaryDidChangeNotification = @"RRGovernmentSalaryDidChangeNotification";
NSString *const RRGovernmentPensionDidChangeNotification = @"RRGovernmentPensionDidChangeNotification";
NSString *const RRGovernmentAveragePriceDidChangeNotification = @"RRGovernmentaveragePriceDidChangeNotification";

NSString *const RRGovernmentTaxLevelUserInfoKey = @"RRGovernmentTaxLevelUserInfoKey";
NSString *const RRGovernmentSalaryUserInfoKey = @"RRGovernmentSalaryUserInfoKey";
NSString *const RRGovernmentPensionUserInfoKey = @"RRGovernmentPensionUserInfoKey";
NSString *const RRGovernmentAveragePriceUserInfoKey = @"RRGovernmentAveragePriceUserInfoKey";


@implementation RRGovernment

- (instancetype)init {
    self = [super init];
    if (self) {
        _taxLevel = 5.f;
        _salary = 1000;
        _pension = 500;
        _averagePrice = 10;
    }
    return self;
}

- (void)setTaxLevel:(CGFloat)taxLevel {
    _taxLevel = taxLevel;
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:taxLevel] forKey:RRGovernmentTaxLevelUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:RRGovernmentTaxLevelDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
}

- (void)setSalary:(CGFloat)salary {
    _salary = salary;
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:salary] forKey:RRGovernmentSalaryUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:RRGovernmentSalaryDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
}

- (void)setPension:(CGFloat)pension {
    _pension = pension;
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:pension] forKey:RRGovernmentPensionUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:RRGovernmentPensionDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
}

- (void)setAveragePrice:(CGFloat)averagePrice {
    _averagePrice = averagePrice;
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:averagePrice] forKey:RRGovernmentAveragePriceUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:RRGovernmentAveragePriceDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
}


@end
