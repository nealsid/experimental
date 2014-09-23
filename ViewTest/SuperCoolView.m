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
    float yCoord = 5 + 20 * i;
    CGContextMoveToPoint(currentContext, 5, yCoord);
    CGContextAddLineToPoint(currentContext, rect.size.width - 5, yCoord);
    CGContextSetLineWidth(currentContext, 2.0);
    CGContextSetStrokeColorWithColor(currentContext, [UIColor blackColor].CGColor);
    CGContextStrokePath(currentContext);
  }

  CGContextMoveToPoint(currentContext, 10, 5);
  NSString* trebleClef = @"\U0001d11e";
  NSDictionary* fontAttrs = [NSDictionary dictionaryWithObjectsAndKeys:
                             [UIColor redColor], NSForegroundColorAttributeName,
                             [UIFont fontWithName:@"Arial" size:24], NSFontAttributeName,
                             nil];
  NSAttributedString* trebleAttrString = [[NSAttributedString alloc] initWithString:trebleClef
                                                                         attributes:fontAttrs];
  CTLineRef ct = CTLineCreateWithAttributedString((CFAttributedStringRef)trebleAttrString);
  CTLineDraw(ct, currentContext);
}

@end
