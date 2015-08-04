//
//  XRTextFieldView.m
//  noahhotel
//
//  Created by XRedcolor on 15/8/4.
//  Copyright (c) 2015年 mirror. All rights reserved.
//

#import "XRTextFieldView.h"

#define Line_Height 8

@implementation XRTextFieldView

- (void)drawRect:(CGRect)rect
{
    UIBezierPath *path = [[UIBezierPath alloc] init];
    [path moveToPoint:CGPointMake(0, self.bounds.size.height - Line_Height)];
    [path addLineToPoint:CGPointMake(0, self.bounds.size.height)];
    [path addLineToPoint:CGPointMake(self.bounds.size.width, self.bounds.size.height)];
    [path addLineToPoint:CGPointMake(self.bounds.size.width, self.bounds.size.height - Line_Height)];
    
    [[UIColor colorWithRed:149 / 255.0 green:149 / 255.0 blue:149 / 255.0 alpha:1] setStroke];
    [path stroke];
}

@end
