//
//  RNHourFormat.m
//  RNHourFormat
//
//  Copyright © 2017 Miron Pawlik. All rights reserved.
//

#import "RNHourFormat.h"

@implementation RNHourFormat

RCT_EXPORT_MODULE();


RCT_REMAP_METHOD(getLocale,
                  resolver:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject)
{
    NSArray *locales = [[NSUserDefaults standardUserDefaults] objectForKey:@"AppleLanguages"];
    if (locales == nil) { reject(@"no_locales", @"No locales", nil); }
    if ([locales count] == 0) { reject(@"no_locales", @"No locales", nil); }
    
    NSString* currentLocale = locales[0];
    resolve(currentLocale);
}

RCT_REMAP_METHOD(getHourFormat,
                  hourFormatResolve:(RCTPromiseResolveBlock)resolve
                  hourFormatReject:(RCTPromiseRejectBlock)reject)
{
    // https://stackoverflow.com/a/11660380
    NSString *formatStringForHours = [NSDateFormatter dateFormatFromTemplate:@"j" options:0 locale:[NSLocale currentLocale]];
    
    NSRange containsA = [formatStringForHours rangeOfString:@"a"];
    if (containsA.location == NSNotFound) {
        resolve(@"24");
    } else{
        resolve(@"12");
    };
}

@end
