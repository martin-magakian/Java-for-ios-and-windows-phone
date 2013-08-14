//
//  JSConnector.h
//  gwtOniOS
//
//  Created by martin on 14/08/2013.
//  Copyright (c) 2013 doduck.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JSConnector : UIWebView

-(int)add:(int) val1 with:(int)val2;
-(void)createUser:(NSString *)name;
-(NSString *)greetCurrentUser;

@end
