//
//  UIView+Extension.m
//  EAMovieApp
//
//  Created by EastAgile42 on 8/15/17.
//  Copyright © 2017 East Agile. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)

- (void)roundedCorner:(CGFloat)radius {
    self.clipsToBounds = YES;
    self.layer.cornerRadius = radius;
}

@end
