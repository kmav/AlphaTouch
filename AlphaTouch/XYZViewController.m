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
    
    // Adding a button now...
    // Create a new UIButton of type UIButtonTypeRoundedRect
    // or UIButtonTypeDetailDisclosure
    self.fiftyPercentButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    // Located at x = 100pts, y = 100pts, 100pts width, 44pts height
    self.fiftyPercentButton.frame = CGRectMake(100, 100, 100, 44);
    // Set the button title, what it shows normally
    [self.fiftyPercentButton setTitle:@"Make green!" forState:UIControlStateNormal];
    [self.fiftyPercentButton setTitle:@"Ouch!" forState:UIControlStateHighlighted];
    // Adding control events
    [self.fiftyPercentButton addTarget:self
                    action:@selector(changeBackgroundColor:)
          forControlEvents:UIControlEventTouchUpInside];
    // Add button on top of our view
    [self.view addSubview:self.fiftyPercentButton];
    
    
    // Adding a button now...
    // Create a new UIButton of type UIButtonTypeRoundedRect
    // or UIButtonTypeDetailDisclosure
    self.hundredPercentButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    // Located at x = 100pts, y = 100pts, 100pts width, 44pts height
    self.hundredPercentButton.frame = CGRectMake(100, 300, 100, 44);
    // Set the button title, what it shows normally
    [self.hundredPercentButton setTitle:@"Make blue!" forState:UIControlStateNormal];
    [self.hundredPercentButton setTitle:@"Ouch!" forState:UIControlStateHighlighted];
    // Adding control events
    [self.hundredPercentButton addTarget:self
                    action:@selector(changeBackgroundColor:)
          forControlEvents:UIControlEventTouchUpInside];
    // Add button on top of our view
    [self.view addSubview:self.hundredPercentButton];
    
    
    // Adding a label now ...
    // Create a new label with frame
    UILabel *firstLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 30, 200, 44)];
    firstLabel.backgroundColor = [UIColor clearColor];
    // Set the label text
    firstLabel.text = @"Hello, welcome to my app!";
    // Add the label as a subview
    [self.view addSubview:firstLabel];

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

- (void)buttonPressed:(UIButton *)sender
{
    NSLog(@"Button pressed, sender: %@", sender);
    if ([sender isEqual:self.fiftyPercentButton]) {
        self.view.alpha = .5;
    } else {
        self.view.alpha = 1;
    }
    // To remove the button from superview!
    // [sender removeFromSuperview];
}

- (void)changeBackgroundColor:(UIButton *)sender
{
    NSLog(@"Button pressed, sender: %@", sender);
    if ([sender isEqual:self.fiftyPercentButton]) {
        self.view.backgroundColor = [UIColor greenColor];
    } else {
        self.view.backgroundColor = [UIColor blueColor];
    }
    // To remove the button from superview!
    // [sender removeFromSuperview];
}

@end
