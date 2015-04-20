//
//  TryCatch.h
//  MusicPlayer
//
//  Created by Thamonwan choesuwan on 4/20/2558 BE.
//  Copyright (c) 2558 ist. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TryCatch : NSObject

+ (void)try:(void(^)())try catch:(void(^)(NSException*exception))catch;
+ (void)try:(void(^)())try catch:(void(^)(NSException*exception))catch finally:(void(^)())finally;

@end
