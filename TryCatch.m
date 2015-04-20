//
//  TryCatch.m
//  MusicPlayer
//
//  Created by Thamonwan choesuwan on 4/20/2558 BE.
//  Copyright (c) 2558 ist. All rights reserved.
//

#import "TryCatch.h"

@implementation TryCatch

+(void)try:(void (^)())try catch:(void (^)(NSException *))catch{
    @try {
        try ? try() : nil;
    }
    @catch (NSException *exception) {
        catch ? catch(exception) : nil;
    }
}

+(void)try:(void (^)())try catch:(void (^)(NSException *))catch finally:(void (^)())finally{
    @try {
        try ? try() : nil;
    }
    @catch (NSException *exception) {
        catch ? catch(exception) : nil;
    }
    @finally {
        finally ? finally() : nil;
    }
}

@end
