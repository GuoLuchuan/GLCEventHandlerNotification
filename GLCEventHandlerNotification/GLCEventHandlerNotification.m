//
//  GLCEventHandlerNotification.m
//  GLCEventHandlerNotification
//
//  Created by guo luchuan on 13-8-16.
//  Copyright (c) 2013年 yours. All rights reserved.
//

#import "GLCEventHandlerNotification.h"

@interface GLCEventHandlerNotification()
{
    NSMutableDictionary *_listenerEventHandlerNotificationDictionary;
}

@end


@implementation GLCEventHandlerNotification


- (id)init
{
    self = [super init];
    
    if (self) {
        _listenerEventHandlerNotificationDictionary = [[NSMutableDictionary alloc] init];
    }
    
    return self;
}

- (void)addObserver:(id)observer handler:(id)handler
{
    
    @synchronized (self) {
        
        id listenerKey = @([observer hash]);
        
        //only one handler for a observer , if you want multiple same handlers for a observer , you should modify the dictionary by your self
        [_listenerEventHandlerNotificationDictionary setObject:handler forKey:listenerKey];
        
    }

}

- (void)removeObserver:(id)observer
{
    
    @synchronized (self) {
        
        [_listenerEventHandlerNotificationDictionary removeObjectForKey:@([observer hash])];
        
    }
    
}

- (void)fireEventUsingBlock:(void (^)(id))block
{
    @synchronized (self) {
        
        NSArray *listenerEventHandlerArray = [_listenerEventHandlerNotificationDictionary allValues];
        
        for (id listenerEventHandler in listenerEventHandlerArray) {
            block(listenerEventHandler);
        }
    }
}

@end
