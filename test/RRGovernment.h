//
//  RRGovernment.h
//  test
//
//  Created by Roman on 11/7/14.
//  Copyright (c) 2014 Rechich. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

extern NSString *const RRGovernmentTaxLevelDidChangeNotification;
extern NSString *const RRGovernmentSalaryDidChangeNotification;
extern NSString *const RRGovernmentPensionDidChangeNotification;
extern NSString *const RRGovernmentAveragePriceDidChangeNotification;

extern NSString *const RRGovernmentTaxLevelUserInfoKey;
extern NSString *const RRGovernmentSalaryUserInfoKey;
extern NSString *const RRGovernmentPensionUserInfoKey;
extern NSString *const RRGovernmentAveragePriceUserInfoKey;

@interface RRGovernment : NSObject

@property (assign, nonatomic) CGFloat taxLevel;
@property (assign, nonatomic) CGFloat salary;
@property (assign, nonatomic) CGFloat pension;
@property (assign, nonatomic) CGFloat averagePrice;

@end
