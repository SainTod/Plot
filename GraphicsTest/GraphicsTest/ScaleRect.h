//
//  ScaleRect.h
//  GraphicsTest
//
//  Created by Vlad on 16/04/2016.
//  Copyright (c) 2016 Vlad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ScaleLine.h"
#import "Functions.h"


@interface ScaleRect : NSObject

@property (strong, nonatomic) ScaleLine * xScale;
@property (strong, nonatomic) ScaleLine * yScale;

-(void)realRectSetValue:(CGRect)rect;
-(void)virtualRectSetValue:(CGRect)rect;
-(CGPoint)realPointForVirtualPoint:(CGPoint)point;
-(CGSize)realSizeForVirtualSize:(CGSize)size;
-(CGRect)realRectForVirtualRect:(CGRect)rect;
-(CGRect)showRect;

@end
