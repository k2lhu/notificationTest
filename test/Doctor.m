//
//  Doctor.m
//  test
//  Created by Roman on 11/4/14.
//  Copyright (c) 2014 Rechich. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor


#pragma mark - PatientDelegate

- (void)patientFeelsBad:(Patient *)patient {
    NSLog(@"Patient %@ feels bad", patient.name);
    if (patient.temperature >= 37 && patient.temperature <= 39) {
        [patient takePill];
    } else if (patient.temperature >= 40.f) {
        [patient makeShot];
    } else {
        NSLog(@"Patient %@ should have a rest", patient.name);
    }
    
}
- (void)patient:(Patient *)patient hasQuestion:(NSString *)question {
    NSLog(@"Patient %@ has next question: %@", patient.name, question);
}

@end
