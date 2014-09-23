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
@end

@implementation ViewController

- (IBAction)sliderValueChanged:(id)sender {
  [self.superCoolView setFontSize:[self.fontSizeSlider value]];
  [self.superCoolView setNeedsDisplay];
}

- (void)viewDidLoad {
  [super viewDidLoad];
  self.superCoolView = [self.view subviews][0];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
