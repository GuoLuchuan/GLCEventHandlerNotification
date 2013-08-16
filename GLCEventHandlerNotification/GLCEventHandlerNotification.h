//
//  GLCEventHandlerNotification.h
//  GLCEventHandlerNotification
//
//  Created by guo luchuan on 13-8-16.
//  Copyright (c) 2013年 yours. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GLCEventHandlerNotification : NSObject

- (void)addObserver:(id)observer handler:(id)handler;

- (void)fireEventUsingBlock:(void (^)(id))block;

- (void)removeObserver:(id)observer;

@end
