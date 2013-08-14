//
//  JSConnector.m
//  gwtOniOS
//
//  Created by martin on 14/08/2013.
//  Copyright (c) 2013 doduck.com. All rights reserved.
//

#import "JSConnector.h"

@implementation JSConnector

- (id)init
{
    self = [super init];
    if (self) {
        NSMutableString *pageStr = [[@"<!DOCTYPE html>\n " mutableCopy] autorelease];
        [pageStr appendString:@"<head>\n"];
        [pageStr appendString:@"<script type=\"text/javascript\" src=\"iphone.nocache.js\"></script>\n"];
        [pageStr appendString:@"</head>\n"];
        [pageStr appendString:@"<body>\n"];
        [pageStr appendString:@"<div id=\"log\" >default </div>\n"];
        [pageStr appendString:@"</body>\n"];
        [pageStr appendString:@"</html>\n"];
        
        NSString *resourcePath = [[NSBundle mainBundle] bundlePath];
        NSURL *resourcePathURL = [NSURL fileURLWithPath:resourcePath];
        [self loadHTMLString:pageStr baseURL:resourcePathURL];
    }
    return self;
}

@end
