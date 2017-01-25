//
//  Car.h
//  ios prep assignment #3
//
//  Created by Callum Davies on 2017-01-21.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property NSString *model;

-(void) drive;
-(id) initWithModel: (NSString *) model;


@end
