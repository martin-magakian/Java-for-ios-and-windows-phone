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
    js = [[JSConnector alloc] init];
    [val1 addTarget:self action:@selector(textFieldDidChange)
          forControlEvents:UIControlEventEditingChanged];
    [val2 addTarget:self action:@selector(textFieldDidChange)
   forControlEvents:UIControlEventEditingChanged];
}

-(void)textFieldDidChange{
    if([val1.text isEqualToString:@""] || [val2.text isEqualToString:@""])
        return;
    
    int added = [js add:[val1.text integerValue] with:[val2.text integerValue]];
    addResult.text = [NSString stringWithFormat:@"%i",added];
}

- (IBAction)greeting:(id)sender {
    [self.view endEditing:YES];
    
    NSString *gretting = [js greetCurrentUser];
    NSString *newTxt = [NSString stringWithFormat:@"%@\r\n%@",gretting, greetingResult.text];
    greetingResult.text = newTxt;
}

- (IBAction)createUser:(id)sender {
    [self.view endEditing:YES];
    
    if([name.text isEqualToString:@""])
        return;
    
    [js createUser:name.text];
}

- (void)dealloc {
    [val1 release];
    [val2 release];
    [addResult release];
    [name release];
    [greetingResult release];
    [js release];
    [super dealloc];
}

@end
