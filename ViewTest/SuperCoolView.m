//
//  SuperCoolView.m
//  ViewTest
//
//  Created by Neal Sidhwaney on 9/23/14.
//  Copyright (c) 2014 DotApp. All rights reserved.
//

#import "SuperCoolView.h"
#import <CoreGraphics/CoreGraphics.h>
#import <CoreText/CoreText.h>

@implementation SuperCoolView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
  NSLog(@"%f/%f/%f/%f", rect.origin.x, rect.origin.y, rect.size.height, rect.size.width);
  CGContextRef currentContext = UIGraphicsGetCurrentContext();
  for (int i = 0; i < 5; ++i) {
    //define starting point
    float yCoord = 15 + 10 * i;
    CGContextMoveToPoint(currentContext, 5, yCoord);
    CGContextAddLineToPoint(currentContext, rect.size.width - 5, yCoord);
    CGContextSetLineWidth(currentContext, 1.0);
    CGContextSetStrokeColorWithColor(currentContext, [UIColor blackColor].CGColor);
    CGContextStrokePath(currentContext);
  }

  for (NSString *familyName in [UIFont familyNames]) {
    for (NSString *fontName in [UIFont fontNamesForFamilyName:familyName]) {
      NSLog(@"%@", fontName);
    }
  }
  CGContextMoveToPoint(currentContext, 5, 0);
  NSString* trebleClef = @"\U0001D11E";
  NSDictionary* fontAttrs = [NSDictionary dictionaryWithObjectsAndKeys:
                             [UIColor blackColor], NSForegroundColorAttributeName,
                             [UIFont fontWithName:@"AppleSymbols" size:96], NSFontAttributeName,
                             nil];
  [trebleClef drawAtPoint:CGPointMake(5,0) withAttributes:fontAttrs];
}

@end
