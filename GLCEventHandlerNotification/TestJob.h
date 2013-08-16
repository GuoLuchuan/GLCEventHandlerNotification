//
//  TestJob.h
//  GLCEventHandlerNotification
//
//  Created by guo luchuan on 13-8-16.
//  Copyright (c) 2013年 yours. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef void (^StartHandler)();
typedef void (^FinishHandler)();

@interface TestJob : NSObject

- (void)addObserver:(id)observer startHandler:(StartHandler)handler;
- (void)removeObserverForStart:(id)observer;

- (void)addObserver:(id)observer finishHandler:(FinishHandler)handler;
- (void)removeObserverForFinish:(id)observer;


//For test
- (void)testStart;

@end
