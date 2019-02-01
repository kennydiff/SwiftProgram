//
//  ImageFactory.m
//  Contacts
//
//  Created by Matthew D. Mathias on 12/29/14.
//  Copyright (c) 2014 BigNerdRanch. All rights reserved.
//

#import "ImageFactory.h"

@implementation ImageFactory

+ (UIImage *)generateDefaultImageOfSize:(CGSize)size
{
    // Make frame and get context
    CGRect frame = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContext(size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // Draw white background and yellow circle
    CGContextSetFillColorWithColor(context, [[UIColor whiteColor] CGColor]);
    CGContextFillRect(context, frame);
    CGContextSetFillColorWithColor(context, [[UIColor yellowColor] CGColor]);
    CGContextFillEllipseInRect(context, frame);
    
    CGFloat x = frame.origin.x + size.width / 2;
    CGFloat y = frame.origin.y + size.height / 2;
    CGPoint center = CGPointMake(x, y);
    
    // Draw eyes and smile
    CGSize eyeSize = CGSizeMake(frame.size.width * 0.1, frame.size.height * 0.1);
    CGFloat separation = frame.size.width * 0.1;
    
    CGPoint leftPt = CGPointMake(center.x - (separation + eyeSize.width), center.y - (eyeSize.height * 2));
    CGPoint rightPt = CGPointMake(center.x + separation, center.y - (eyeSize.height * 2));
    
    CGRect leftEye = CGRectMake(leftPt.x, leftPt.y, eyeSize.width, eyeSize.height);
    CGRect rightEye = CGRectMake(rightPt.x, rightPt.y, eyeSize.width, eyeSize.height);
    CGContextSetFillColorWithColor(context, [[UIColor blackColor] CGColor]);
    CGContextFillEllipseInRect(context, leftEye);
    CGContextFillEllipseInRect(context, rightEye);
    
    CGFloat smileHeight = center.y + eyeSize.height;
    CGPoint leftEdge = CGPointMake(leftEye.origin.x, smileHeight);
    CGPoint rightEdge = CGPointMake(rightEye.origin.x + rightEye.size.width, smileHeight);
    CGFloat smileLength = rightEdge.x - leftEdge.x;
    CGFloat smileWidth = eyeSize.width / 3;
    
    CGContextSetLineWidth(context, smileWidth);
    CGContextBeginPath(context);
    CGContextMoveToPoint(context, leftEdge.x, leftEdge.y);
    CGContextAddCurveToPoint(context, leftEdge.x + (smileLength / 4), smileHeight + smileWidth * 2,
                             rightEdge.x - (smileLength / 4), smileHeight + smileWidth * 2,
                             rightEdge.x, rightEdge.y);
    CGContextStrokePath(context);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
