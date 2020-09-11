#import "IsCatalyst.h"

@implementation IsCatalyst

RCT_EXPORT_MODULE()

+ (BOOL)requiresMainQueueSetup
{
    return NO;
}

- (NSDictionary *)constantsToExport {
    return @{
        @"isCatalyst": @([self isCatalyst]),
    };
}

- (BOOL) isCatalyst {
#if TARGET_OS_MACCATALYST
    return YES;
#else
    return NO;
#endif
}

@end
