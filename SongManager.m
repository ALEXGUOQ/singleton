//
//  SongManager.m
//  KoudaiTuan
//
//  Created by song on 13-11-28.
//  Copyright (c) 2013年 Cao Vicky. All rights reserved.
//

#import "SongManager.h"

@implementation SongManager
+ (id)sharedManager {
    static SongManager *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}

- (id)init {
    if (self = [super init]) {

    }
    return self;
}

- (void)dealloc {
    // Should never be called, but just here for clarity really.
}
@end
