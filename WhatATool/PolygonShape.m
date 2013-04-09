//
//  PolygonShape.m
//  WhatATool
//
//  Created by Kelley Lange on 4/8/13.
//  Copyright (c) 2013 Kurt Lange. All rights reserved.
//

#import "PolygonShape.h"

@implementation PolygonShape

@synthesize numberOfSides = _numberOfSides;
@synthesize minimumNumberOfSides = _minimumNumberOfSides;
@synthesize maximumNumberOfSides = _maximumNumberOfSides;

-(void)setMaximumNumberOfSides:(int)value
{
    if (_minimumNumberOfSides && value > _minimumNumberOfSides) {
        _maximumNumberOfSides = value;
    } else if (!_minimumNumberOfSides && value > 2) {
        _maximumNumberOfSides = value;
    } else NSLog(@"invalid max number of sides");
    NSLog(@"maxnumsides: %i",_maximumNumberOfSides);
}

-(void)setMinimumNumberOfSides:(int)value
{
    if (_maximumNumberOfSides && value < _maximumNumberOfSides) {
        _minimumNumberOfSides = value;
    } else if (!_maximumNumberOfSides && value < 12) {
        _minimumNumberOfSides = value;
    } else NSLog(@"invalid min number of sides");
    
    NSLog(@"minnumsides: %i",_minimumNumberOfSides);
}

-(void)setNumberOfSides:(int)value
{
    if (value > _minimumNumberOfSides && value < _maximumNumberOfSides) {
        _numberOfSides = value;
        NSLog(@"numsides: %i",_numberOfSides);
    }else NSLog(@"invalid number of sides");
}

-(float)angleInDegrees
{
    int sides = self.numberOfSides;
    float degrees = ((sides - 2) * 180) / sides;
    NSLog(@"sides: %i, degrees: %g", sides, degrees);
    return degrees;
}

-(float)angleInRadians
{
    float degrees = self.angleInDegrees;
    float radians = ((3.14156 / 180) * degrees);
    NSLog(@"degrees: %g, radians: %g", degrees, radians);
    return radians;
}

-(id)descriptionFull
{
    NSLog(@"description");
    NSLog(@"Hello I am a %i-sided polygon (aka a %@) with angles of %g degrees(%f radians).", self.numberOfSides, self.descriptionPolygon, self.angleInDegrees, self.angleInRadians);
    return 0;
}

-(id)descriptionPolygon
{
    int sides = self.numberOfSides;
    NSString * polyName = @"";
    
    if (sides == 3) {
        polyName = @"triangle";
    } else if (sides == 4) {
        polyName = @"square";
    } else if (sides == 5) {
       polyName = @"pentagon";
    } else if (sides == 6) {
        polyName = @"hexagon";
    } else if (sides == 7) {
        polyName = @"heptagon";
    } else if (sides == 8) {
        polyName = @"octagon";
    } else if (sides == 9) {
        polyName = @"nonagon";
    } else if (sides == 10) {
        polyName = @"decagon";
    } else if (sides == 11) {
        polyName = @"hendecagon";
    } else if (sides == 12) {
        polyName = @"dodecagon";
    } else if (sides == 13) {
        polyName = @"tridecagon";
    }
    NSLog(@"%@", polyName);
    return polyName;
}

-(id)initWithNumberOfSides:(int)sides minimumNumberOfSides:(int)min maximumNumberOfSides:(int)max
{
    if (self = [super init]) {
    self.maximumNumberOfSides = max;
    self.minimumNumberOfSides = min;
    self.numberOfSides = sides;
    }
    return self;
}

-(id)init
{
    NSLog(@"init");
    if (self = [super init]) {
        self.minimumNumberOfSides = 3;
        self.maximumNumberOfSides = 10;
        self.numberOfSides = 5;
        NSLog(@"sides= %i, min=%i, max=%i", self.numberOfSides, self.minimumNumberOfSides, self.maximumNumberOfSides);
        }
    return self;
}



@end
