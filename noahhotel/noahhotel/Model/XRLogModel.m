//
//  XRLogModel.m
//  noahhotel
//
//  Created by XRedcolor on 15/8/3.
//  Copyright (c) 2015年 mirror. All rights reserved.
//

#import "XRLogModel.h"

@implementation XRLogModel

- (NSString *)formatLogMessage:(DDLogMessage *)logMessage
{
    NSString *logLevel = nil;
    
    switch (logMessage.flag) {
        case DDLogFlagError:
            logLevel = @"[Error]    >";
            break;
        case DDLogFlagWarning:
            logLevel = @"[Warning]  >";
            break;
        case DDLogFlagInfo:
            logLevel = @"[Info]     >";
            break;
        case DDLogFlagDebug:
            logLevel = @"[Debug]    >";
            break;
        case DDLogFlagVerbose:
            logLevel = @"[Verbose]  >";
            break;
    }
    
    return [NSString stringWithFormat:@"%@ [%@ %@][line %lu]: %@", logLevel, logMessage.fileName, logMessage.function, logMessage.line, logMessage.message];
}

@end
