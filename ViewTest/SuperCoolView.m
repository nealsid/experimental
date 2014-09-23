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

- (void)drawRect:(CGRect)rect {
  CGContextRef currentContext = UIGraphicsGetCurrentContext();
  CGFloat height = rect.size.height;
  for (int i = 0; i < 5; ++i) {
    //define starting point
    float yCoord = 15 + ((height - 30) / 5) * i;
    CGContextMoveToPoint(currentContext, 5, yCoord);
    CGContextAddLineToPoint(currentContext, rect.size.width - 5, yCoord);
    CGContextSetLineWidth(currentContext, 1.0);
    CGContextSetStrokeColorWithColor(currentContext, [UIColor blackColor].CGColor);
    CGContextStrokePath(currentContext);
  }

  CGContextMoveToPoint(currentContext, 5, 0);
  NSString* trebleClef = @"\U0001D11E";
  NSLog(@"Fontsize: %f", self.fontSize);
  NSDictionary* fontAttrs = [NSDictionary dictionaryWithObjectsAndKeys:
                             [UIColor blackColor], NSForegroundColorAttributeName,
                             [UIFont fontWithName:@"AppleSymbols" size:self.fontSize], NSFontAttributeName,
                             nil];
  [trebleClef drawAtPoint:CGPointMake(5,0) withAttributes:fontAttrs];
}

@end
