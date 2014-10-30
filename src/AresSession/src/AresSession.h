//
//  AresSession.h
//  BOC
//
//  Created by huhao on 12-8-18.
//  Copyright (c) 2012年 胡皓. All rights reserved.

#import <Foundation/Foundation.h>
#import "AresFstLogSession.h"

@interface AresSession : NSObject
@property (strong , nonatomic ) AresFstLogSession *theAresFstLogSession;
@property (strong , nonatomic ) NSString *key;
@end
