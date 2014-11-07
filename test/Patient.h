//
//  Patient.h
//  test
//
//  Created by Roman on 11/4/14.
//  Copyright (c) 2014 Rechich. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol PatientDelegate;

@interface Patient : NSObject

@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) CGFloat temperature;
@property (weak, nonatomic) id <PatientDelegate> delegate;

- (BOOL)howAreYou;
- (void)takePill;
- (void)makeShot;

@end


@protocol PatientDelegate
@required
- (void)patientFeelsBad:(Patient *)patient;
- (void)patient:(Patient *)patient hasQuestion:(NSString *)question;

@end
