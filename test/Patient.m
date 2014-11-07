//
//  Patient.m
//  test
//
//  Created by Roman on 11/4/14.
//  Copyright (c) 2014 Rechich. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (BOOL)howAreYou {
    BOOL state = arc4random() % 2;
    if (!state) {
        [self.delegate patientFeelsBad:self];
    }
    return state;
}
- (void)takePill {
    NSLog(@"%@ takes pills", self.name);
}
- (void)makeShot {
    NSLog(@"%@ makes pills", self.name);
}

@end
