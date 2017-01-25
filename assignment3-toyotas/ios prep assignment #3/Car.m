//
//  Car.m
//  ios prep assignment #3
//
//  Created by Callum Davies on 2017-01-21.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import "Car.h"

@implementation Car

-(void) drive {
    NSLog(@"The Car you're driving is a %@!", self.model);
}

-(id) initWithModel:(NSString *)model {
    self = [super init];
    _model = model;
    return self;
}

@end
