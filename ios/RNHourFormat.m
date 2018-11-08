//
//  RNHourFormat.m
//  RNHourFormat
//
//  Copyright © 2017 Miron Pawlik. All rights reserved.
//

#import "RNHourFormat.h"

@implementation RNHourFormat


- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_MODULE();

- (NSString *)getLocale
{
    NSArray *locales = [[NSUserDefaults standardUserDefaults] objectForKey:@"AppleLanguages"];
    if (locales == nil) { return @""; }
    if ([locales count] == 0) { return @""; }
    
    NSString* currentLocale = locales[0];
    return currentLocale;
}

- (NSString *)getHourFormat
{
    // https://stackoverflow.com/a/11660380
    NSString *formatStringForHours = [NSDateFormatter dateFormatFromTemplate:@"j" options:0 locale:[NSLocale currentLocale]];
    
    NSRange containsA = [formatStringForHours rangeOfString:@"a"];
    if (containsA.location == NSNotFound) {
        return @"24";
    } else{
        return @"12";
    };
}

- (NSDictionary *)constantsToExport
{
    return @{ @"LOCALE" : ([self getLocale]),
              @"HOUR_FORMAT" : ([self getHourFormat]) };
}

+ (BOOL)requiresMainQueueSetup
{
    return YES;
} 

@end
