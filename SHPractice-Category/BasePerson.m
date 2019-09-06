//
//  BasePerson.m
//  SHPractice-Category
//
//  Created by Shine on 04/12/2018.
//  Copyright © 2018 shine. All rights reserved.
//

#import "BasePerson.h"

@implementation BasePerson
- (void)eat{
    NSLog(@"BasePerson eat");
}

+ (void)load{
    NSLog(@"BasePerson load");
}

+ (void)initialize{
    NSLog(@"BasePerson initialize");
}
@end
