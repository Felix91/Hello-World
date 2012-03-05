//
//  prefixtestViewController.m
//  Hello-World
//
//  Created by Felix Tang on 12-03-04.
//  Copyright (c) 2012 UBC. All rights reserved.
//

#import "prefixtestViewController.h"

@implementation prefixtestViewController
@synthesize userName = _userName; // by adding underscore, tell comiler to use _userName as the name of the instance variable for the userName property
@synthesize textField;
@synthesize label;


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setTextField:nil];
    [self setLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

// this will be sent to view controller when user taps Hello button
- (IBAction)changeGreeting:(id)sender {
    
    // retrieve text from text field and set the view controller's userName property to the result
    self.userName = self.textField.text;
    
    // creates new variable and sets it to view controller's userName property
    NSString *nameString = self.userName;
    
    // take care of empty string condition
    if ([nameString length] == 0)
    {
        nameString = @"World"; // @"World" is a string constant represented by an instance of NSString.
    }
    
    NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@!", nameString]; // initWithFormat creates a new string that follows the format specified by the format string you supply (like printf)
    // %@ acts as a placeholder for a string object
    
    // set label text
    self.label.text = greeting;
}

// toggle first responder status to dismiss keyboard
// UITextFieldDelegate includes textFieldShouldReturn method that the text field calls when user taps the Return button
- (BOOL)textFieldShouldReturn:(UITextField *)theTextField
{
    if (theTextField == self.textField)
    {
        [theTextField resignFirstResponder];
    }
    return YES;
}

@end
