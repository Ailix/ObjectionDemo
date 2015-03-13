//
//  Protocols.h
//  ObjectionDemo
//
//  Created by Ailix on 15/3/12.
//  Copyright (c) 2015年 Ailix. All rights reserved.
//

#ifndef ObjectionDemo_Protocols_h
#define ObjectionDemo_Protocols_h

@protocol A1ViewControllerProtocol <NSObject>

@property (nonatomic,copy) NSString *a1_text;
@property (nonatomic,copy) UIColor *backgroundColor;


@end


@protocol A2ViewControllerProtocol <NSObject>

@property (nonatomic,copy) NSString *a2_text;
@property (nonatomic,copy) UIColor *backgroundColor;


@end


#endif
