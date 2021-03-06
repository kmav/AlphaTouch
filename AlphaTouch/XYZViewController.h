//
//  XYZViewController.h
//  AlphaTouch
//
//  Created by Konstantinos M on 12/3/14.
//  Copyright (c) 2014 com.lumicsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XYZViewController : UIViewController

@property (weak, nonatomic) UIButton *greenButton;
@property (weak, nonatomic) UIButton *blueButton;

- (void)buttonPressed:(UIButton *)sender;
- (void)changeBackgroundColor:(UIButton *)sender;

@end
