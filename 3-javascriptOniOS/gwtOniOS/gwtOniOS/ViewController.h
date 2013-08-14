//
//  ViewController.h
//  gwtOniOS
//
//  Created by martin on 14/08/2013.
//  Copyright (c) 2013 doduck.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    IBOutlet UITextField *val1;
    IBOutlet UITextField *val2;
    
    IBOutlet UILabel *addResult;
    
    IBOutlet UITextField *name;
    IBOutlet UITextView *greetingResult;
}
- (IBAction)greetingTouched:(id)sender;

@end
