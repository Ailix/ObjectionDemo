//
//  A2ViewControllerModule.m
//  ObjectionDemo
//
//  Created by Ailix on 15/3/12.
//  Copyright (c) 2015年 Ailix. All rights reserved.
//

#import "A2ViewControllerModule.h"
#import <Objection.h>
#import "A2ViewController.h"
#import "AIMacro.h"


@implementation A2ViewControllerModule



+ (void)load
{
#if AI_CONDITION == 0
    JSObjectionInjector *injector = [JSObjection defaultInjector];
    injector = injector ? : [JSObjection createInjector];
    DLog(@"%@",injector);
    injector = [injector withModule:[[self alloc] init]];
    DLog(@"%@",injector);
    [JSObjection setDefaultInjector:injector];

#elif AI_CONDITION == 1
  
#endif
}


- (void)configure
{
    [self bindClass:[A2ViewController class] toProtocol:@protocol(A2ViewControllerProtocol)];
    
}
@end
