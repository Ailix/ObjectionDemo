//
//  A1ViewControllerModule.m
//  ObjectionDemo
//
//  Created by Ailix on 15/3/12.
//  Copyright (c) 2015年 Ailix. All rights reserved.
//

#import "A1ViewControllerModule.h"
#import <Objection.h>
#import "A1ViewController.h"
#import "AIMacro.h"


@implementation A1ViewControllerModule



+ (void)load
{
    
#if AI_CONDITION == 0

    
    JSObjectionInjector *injector = [JSObjection defaultInjector];
    injector = injector ? : [JSObjection createInjector];
    DLog(@"%@",injector);

    injector = [injector withModule:[[self alloc] init]];
    DLog(@"%@",injector);
    [JSObjection setDefaultInjector:injector];
/* 让同一个defaultInjector指针绑定多个JSObjectionModule对象*/
    
#elif AI_CONDITION == 1


#endif
}


- (void)configure
{
    [self bindClass:[A1ViewController class] toProtocol:@protocol(A1ViewControllerProtocol)];
    
}
@end
