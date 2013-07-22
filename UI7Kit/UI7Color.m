//
//  UI7Color.m
//  UI7Kit
//
//  Created by Jeong YunWon on 13. 6. 29..
//  Copyright (c) 2013 youknowone.org. All rights reserved.
//

#import <UIKitExtension/UIKitExtension.h>
#import "UI7Color.h"

@implementation UIColor (UI7Kit)

- (UIColor *)highligtedColorForBackgroundColor:(UIColor *)backgroundColor {
    UIAColorComponents *selfComponents = self.components;
    UIAColorComponents *backgroundComponents = backgroundColor.components;
    return [UIColor colorWithRed:backgroundComponents.red * (backgroundComponents.red * 0.75f + selfComponents.red * 0.25f)
                           green:backgroundComponents.green * (backgroundComponents.green * 0.75f + selfComponents.green * 0.25f)
                            blue:backgroundComponents.blue * (backgroundComponents.blue * 0.75f + selfComponents.blue * 0.25f)
                           alpha:selfComponents.alpha];
}

- (UIColor *)highligtedColor {
    return [self highligtedColorForBackgroundColor:[UIColor whiteColor]];
}

@end


@implementation UI7Color

+ (UIColor *)defaultBarColor {
    return [UIColor colorWith8bitWhite:255 alpha:250];
}

+ (UIColor *)blackBarColor {
    return [UIColor colorWith8bitWhite:90 alpha:250];
}

+ (UIColor *)defaultBackgroundColor {
    return [UIColor colorWith8bitWhite:248 alpha:255];
}

+ (UIColor *)defaultTintColor {
    return [UIColor colorWith8bitRed:0 green:126 blue:245 alpha:255];
}

+ (UIColor *)defaultEmphasizedColor {
    return [UIColor colorWith8bitRed:255 green:69 blue:55 alpha:255];
}

+ (UIColor *)defaultTrackTintColor {
    return [UIColor colorWith8bitWhite:183 alpha:255];
}

+ (UIColor *)groupedTableViewSectionBackgroundColor {
    return [UIColor colorWith8bitWhite:229 alpha:255];
}

@end
