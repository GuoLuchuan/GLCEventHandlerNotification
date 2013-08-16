//
//  TestJob.m
//  GLCEventHandlerNotification
//
//  Created by guo luchuan on 13-8-16.
//  Copyright (c) 2013年 yours. All rights reserved.
//

#import "TestJob.h"

#import "GLCEventHandlerNotification.h"

@interface TestJob ()
{
    GLCEventHandlerNotification *_onStarEventHandlerNotification;
    GLCEventHandlerNotification *_onFinishEventHandlerNotification;
}

@end

@implementation TestJob

- (id)init
{
    self = [super init];
    if (self) {
        _onStarEventHandlerNotification = [[GLCEventHandlerNotification alloc] init];
        _onFinishEventHandlerNotification = [[GLCEventHandlerNotification alloc] init];
    }
    return self;
}


- (void)testStart
{
    [_onStarEventHandlerNotification fireEventUsingBlock:^(StartHandler startHandler) {
        startHandler();
    }];
    
    int testNum = 0;
    for (int i = 0; i < 9999; i++) {
        testNum++;
    }
    
    [_onFinishEventHandlerNotification fireEventUsingBlock:^(FinishHandler finishHandler) {
        finishHandler();
    }];
}



#pragma mark -
#pragma mark Deal With Observer

- (void)addObserver:(id)observer startHandler:(StartHandler)handler
{
    [_onStarEventHandlerNotification addObserver:observer handler:handler];
}
- (void)removeObserverForStart:(id)observer
{
    [_onStarEventHandlerNotification removeObserver:observer];
}

- (void)addObserver:(id)observer finishHandler:(FinishHandler)handler
{
    [_onFinishEventHandlerNotification addObserver:observer handler:handler];
}
- (void)removeObserverForFinish:(id)observer
{
    [_onFinishEventHandlerNotification removeObserver:observer];
}

@end
