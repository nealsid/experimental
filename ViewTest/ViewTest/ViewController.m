//
//  ViewController.m
//  ViewTest
//
//  Created by Neal Sidhwaney on 9/23/14.
//  Copyright (c) 2014 DotApp. All rights reserved.
//

#import "ViewController.h"
#import "SuperCoolView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UISlider *fontSizeSlider;
@property (weak, nonatomic) SuperCoolView* superCoolView;
@property (weak, nonatomic) IBOutlet UISlider *subviewFrameHeightSlider;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *subviewHeightConstraint;

@end

@implementation ViewController

- (IBAction)sliderValueChanged:(id)sender {
  [self.superCoolView setFontSize:[self.fontSizeSlider value]];
  [self.superCoolView setNeedsDisplay];
}

- (IBAction)subviewFrameSliderValueChanged:(id)sender {
  [self.view setNeedsLayout];
  [self.superCoolView setNeedsDisplay];
}

- (void) viewWillLayoutSubviews {
  self.subviewHeightConstraint.constant = [self.subviewFrameHeightSlider value];
  NSLog(@"Subview rect: %f/%f/%f/%f", self.superCoolView.frame.origin.x, self.superCoolView.frame.origin.y,
        self.superCoolView.frame.size.width, self.superCoolView.frame.size.height);
}

- (void)viewDidLoad {
  [super viewDidLoad];
  self.superCoolView = [self.view subviews][0];
  NSLog(@"Subview rect: %f/%f/%f/%f", self.superCoolView.frame.origin.x, self.superCoolView.frame.origin.y,
        self.superCoolView.frame.size.width, self.superCoolView.frame.size.height);
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
