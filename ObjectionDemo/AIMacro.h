//
//  AIMacro.h
//  ObjectionDemo
//
//  Created by Ailix on 15/3/13.
//  Copyright (c) 2015年 Ailix. All rights reserved.
//

#ifndef ObjectionDemo_AIMacro_h
#define ObjectionDemo_AIMacro_h

#undef AI_CONDITION
#define AI_CONDITION 0

#ifdef DEBUG
#   define DLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#   define AILog(fmt,...) NSLog((@"[Line %d] " fmt), __LINE__, ##__VA_ARGS__);
#else
#   define DLog(...)
#   define AILog(...)
#endif


#endif
