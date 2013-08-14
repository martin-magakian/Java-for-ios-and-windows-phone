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
        [pageStr appendString:@"<script type=\"text/javascript\" src=\"java2javascript.nocache.js\"></script>\n"];
        [pageStr appendString:@"<script>      function myInit() {alert('GWT ready to go');}</script>\n"];
        [pageStr appendString:@"</head>\n"];
        [pageStr appendString:@"<body>\n"];
        [pageStr appendString:@"<div id=\"log\" >default </div>\n"];
        [pageStr appendString:@"</body>\n"];
        [pageStr appendString:@"</html>\n"];
        
        NSString *resourcePath = [[NSBundle mainBundle] bundlePath];
        NSURL *resourcePathURL = [NSURL fileURLWithPath:resourcePath];
        [self loadHTMLString:pageStr baseURL:resourcePathURL];
        [self setJSVariable];
    }
    return self;
}

-(void)setJSVariable{
    [self stringByEvaluatingJavaScriptFromString:@"var bl = null;"];
    [self stringByEvaluatingJavaScriptFromString:@"var helloUser = null;"];
}

-(int)add:(int) val1 with:(int)val2{
    [self runJS:@"bl = new jsc.BusinessLogic();"];
    NSString *rawJS = [NSString stringWithFormat:@"bl.addNumber(%i, %i);",val1, val2];
    NSString *addResult = [self runJS:rawJS];
    return [addResult integerValue];
}

-(void)createUser:(NSString *)name{
    [self runJS:@"bl = new jsc.BusinessLogic();"];
    NSString *rawJS = [NSString stringWithFormat:@"helloUser = bl.buildHelloUser('%@');",name];
    [self runJS:rawJS];
}

-(NSString *)greetCurrentUser{
    return [self runJS:@"helloUser.sayHi();"];
}

-(NSString *)runJS:(NSString *)js{
    return [self stringByEvaluatingJavaScriptFromString:js];
}

@end
