//
//  ViewController.m
//  SHPractice-Category
//
//  Created by Shine on 04/12/2018.
//  Copyright © 2018 shine. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import <objc/runtime.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *person = [[Person alloc] init];
    Class p = [Person class];
    [person eat];
    
    /*class和categoryA,categoryB都实现+load方法(compileSource中A在B的上面). 执行顺序如下:
    class +load  --> categoryA +load --> cagegoryB +load
     
     总结:类+load方法先执行，然后根据CompileSorce编译顺序，先编译的先执行.
     */
    
    
    /*class和categoryA,categoryB都实现对象方法-eat(compileSource中A在B的上面). 执行顺序如下:
     只会调用B的eat.
     
     总结:分类存在同样的对象方法，后编译的会覆盖前编译的。 所有只会调用最后编译的方法。(其实不是覆盖，只不过所有方法会存在一个方法表里，最后编译的category方法会放在表最前面，执行时找到一个方法了，后面就不会去找了).
     */
    
    /*
    if (p) {
        unsigned int methodCount;
        Method *methodList = class_copyMethodList(p, &methodCount);
        NSLog(@"%d",methodCount);   //打印出方法表里方法的总数量. 是不包含BasePerson中的eat方法.class_copyMethodList 只会返回当前Class的对象方法，不包括父类的对象方法
        IMP lastImp = NULL;
        SEL lastSel = NULL;
        for (NSInteger i = 0; i < methodCount; i++) {
            Method method = methodList[i];
            NSString *methodName = [NSString stringWithCString:sel_getName(method_getName(method))
                                                      encoding:NSUTF8StringEncoding];
            if ([@"eat" isEqualToString:methodName]) {
                lastImp = method_getImplementation(method);
                lastSel = method_getName(method);
            }
        }
        typedef void (*fn)(id,SEL);
        
        if (lastImp != NULL) {
            fn f = (fn)lastImp;
            f(person,lastSel);
        }
        free(methodList);
    }
    */
    
    /*
     打印person eat.
     如果我要强行想办法调用最早编译的方法. 也就是执行方法表里的最后一个。思路遍历方法表。取最后一个.
     */
    
}

@end
