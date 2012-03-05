//
//  main.m
//  Hello-World
//
//  Created by Felix Tang on 12-03-04.
//  Copyright (c) 2012 UBC. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "prefixtestAppDelegate.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        // The call to UIApplicationMain creates an instance of the UIApplication class and an instance of the app delegate
        // The app delegate provides the window into which your app's content is drawn.
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([prefixtestAppDelegate class]));
    }
}
