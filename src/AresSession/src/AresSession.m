//
//  AresSession.m
//  BOC
//
//  Created by huhao on 12-8-18.
//  Copyright (c) 2012年 胡皓. All rights reserved.

#import "AresSession.h"

@interface AresSession()

@property (nonatomic,retain) id loginSession;

@end

static NSMutableDictionary* _singletons;
@implementation AresSession

+ (instancetype)singleton
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _singletons = [NSMutableDictionary dictionary];
    });
    
    id instance = nil;
    @synchronized(self) {
        NSString* klass = NSStringFromClass(self);
        instance = _singletons[klass];
        if (!instance) {
            instance = [self new];
            _singletons[klass] = instance;
        }
    }
    return instance;
}

@end