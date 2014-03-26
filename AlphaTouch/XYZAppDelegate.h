//
//  XYZAppDelegate.h
//  AlphaTouch
//
//  Created by Konstantinos M on 12/3/14.
//  Copyright (c) 2014 com.lumicsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@class XYZViewController;

// UIResponder: Interface for responding to events
@interface XYZAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) XYZViewController *viewController;

@end
