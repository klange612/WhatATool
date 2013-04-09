//
//  main.m
//  WhatATool
//
//  Created by Kelley Lange on 4/8/13.
//  Copyright (c) 2013 Kurt Lange. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "WhatAToolAppDelegate.h"
#import "PolygonShape.h"

int main(int argc, char *argv[])
{
    PolygonShape * poly1 = [[PolygonShape alloc] init];
    NSLog(@"poly1 created");
    [poly1 descriptionFull];
    
    PolygonShape* poly2 = [[PolygonShape alloc] initWithNumberOfSides:4 minimumNumberOfSides:3 maximumNumberOfSides:6];
    [poly2 descriptionFull];
                           
    PolygonShape* poly3 = [[PolygonShape alloc] initWithNumberOfSides:8 minimumNumberOfSides:4 maximumNumberOfSides:10];
    [poly3 descriptionFull];
    
    
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([WhatAToolAppDelegate class]));
    }
}
