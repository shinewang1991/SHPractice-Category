//
//  Person+C.m
//  SHPractice-Category
//
//  Created by Shine on 2018/12/15.
//  Copyright © 2018年 shine. All rights reserved.
//

#import "Person+C.h"

@implementation Person (C)

- (void)eat{
    NSLog(@"personC eat");
}

+ (void)load{
    NSLog(@"PersonC load");
}

+ (void)initialize{
    NSLog(@"PersonC initialize");
}
@end
