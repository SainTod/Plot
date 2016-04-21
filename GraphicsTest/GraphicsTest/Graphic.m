//
//  GraphicModel.m
//  GraphicsTest
//
//  Created by Vlad on 02/04/2016.
//  Copyright (c) 2016 Vlad. All rights reserved.
//

#import "Graphic.h"

@implementation Graphic

-(instancetype)init
{
    self = [super init];
    self.scale = [ScaleRect new];
    return self;
}

-(CGRect)rectForPointSeries;
{
    CGRect rect = CGRectNull;
    for (PointSeries * series in self.seriesArray)
    {
        rect = CGRectUnion(rect, [series rectForPoints]);
    }
    return rect;
}

-(void)addPointSeries:(PointSeries *)series
{
    NSMutableArray * mutable = [NSMutableArray arrayWithArray:self.seriesArray];
    [mutable addObject:series];
    self.seriesArray = [NSArray arrayWithArray:mutable];
    [self rectForPointSeries];
    CGRect rect = [self rectForPointSeries];
    [self.scale virtualRectSetValue:rect];
}

@end
