//
//  Toyota.m
//  ios prep assignment #3
//
//  Created by Callum Davies on 2017-01-22.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import "Toyota.h"

@implementation Toyota
{
    NSString *_model;
}

- (instancetype)init
{
    return [self initWithModel:@"Prius"];         // Called initWithModel: from parent class Car, and passed it onto self
}

@end
