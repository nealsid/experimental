//
//  SuperCoolView.h
//  ViewTest
//
//  Created by Neal Sidhwaney on 9/23/14.
//  Copyright (c) 2014 DotApp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

FOUNDATION_EXPORT NSString* const kTrebleClef;
FOUNDATION_EXPORT NSString* const kBassClef;

typedef NS_ENUM(NSInteger, MusicalNote) {
  A,
  ASharp,
  B,
  C,
  CSharp,
  D,
  DSharp,
  E,
  F,
  FSharp,
  G,
  GSharp
};

FOUNDATION_EXPORT NSArray* const kAMajor;

@interface SuperCoolView : UIView

@property CGFloat fontSize;

@end
