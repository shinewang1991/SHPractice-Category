//
//  Person+B.m
//  SHPractice-Category
//
//  Created by Shine on 04/12/2018.
//  Copyright © 2018 shine. All rights reserved.
//

#import "Person+B.h"

@implementation Person (B)
- (void)eat{
    NSLog(@"personB eat");
}

+ (void)load{
    NSLog(@"PersonB load");
}

+ (void)initialize{
    NSLog(@"PersonB initialize");
}
@end
