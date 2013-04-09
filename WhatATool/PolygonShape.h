//
//  PolygonShape.h
//  WhatATool
//
//  Created by Kelley Lange on 4/8/13.
//  Copyright (c) 2013 Kurt Lange. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PolygonShape : NSObject

@property (nonatomic) int numberOfSides;
@property (nonatomic) int minimumNumberOfSides;
@property (nonatomic) int maximumNumberOfSides;
@property (readonly, nonatomic) float angleInDegrees;
@property (readonly, nonatomic) float angleInRadians;
@property (readonly, nonatomic) NSString * name;

-(void)setNumberOfSides:(int)numberOfSides;
-(void)setMinimumNumberOfSides:(int)minimumNumberOfSides;
-(void)setMaximumNumberOfSides:(int)maximumNumberOfSides;
-(id)initWithNumberOfSides:(int)sides minimumNumberOfSides:(int)min maximumNumberOfSides:(int)max;
-(id)init;
-(id)descriptionFull;


@end

