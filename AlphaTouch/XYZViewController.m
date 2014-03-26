//
//  XYZViewController.m
//  AlphaTouch
//
//  Created by Konstantinos M on 12/3/14.
//  Copyright (c) 2014 com.lumicsoft. All rights reserved.
//

#import "XYZViewController.h"

@interface XYZViewController ()

@end

@implementation XYZViewController

// After loadView, typically where labels/buttons go
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor yellowColor];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"Started touching the screen");
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.view.alpha = ((double)arc4random() / 0x100000000);
    NSLog(@"Touch event occured");
}

// Called first time view property accessed
- (void) loadView
{
    // Create a view (paint) with the size of the whole screen
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    UIView *colorView = [[UIView alloc] initWithFrame:viewRect];
    self.view = colorView;
}
@end
