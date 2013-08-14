//
//  ViewController.m
//  gwtOniOS
//
//  Created by martin on 14/08/2013.
//  Copyright (c) 2013 doduck.com. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [val1 addTarget:self action:@selector(textFieldDidChange)
          forControlEvents:UIControlEventEditingChanged];
    [val2 addTarget:self action:@selector(textFieldDidChange)
   forControlEvents:UIControlEventEditingChanged];
}

-(void)textFieldDidChange{
    
}

- (void)dealloc {
    [val1 release];
    [val2 release];
    [addResult release];
    [name release];
    [greetingResult release];
    [super dealloc];
}
- (IBAction)greetingTouched:(id)sender {
    [self.view endEditing:YES];
}
@end
