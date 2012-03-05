//
//  prefixtestViewController.h
//  Hello-World
//
//  Created by Felix Tang on 12-03-04.
//  Copyright (c) 2012 UBC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface prefixtestViewController : UIViewController <UITextFieldDelegate> // your view controller adopts the UITextFieldDelegate protocol

// An outlet describes a connection between 2 objects
@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet UILabel *label;

// IBAction is used to tell Xcode to treat a method as an action for target-action connections
- (IBAction)changeGreeting:(id)sender;

// property for user's name so that your code always has a reference to it
@property (copy, nonatomic) NSString *userName;

@end
