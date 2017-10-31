//
//  UIView+Borders.m
//
//  Created by huangzhifei on 12/28/13.
//  Copyright (c) 2013 huangzhifei. All rights reserved.
//

#import "UIView+Borders.h"
#import <objc/runtime.h>

@implementation UIView (Borders)

/**
 Top
 */
- (CALayer *)createTopBorderWithHeight:(CGFloat)height andColor:(UIColor *)color {
    return [self getOneSidedBorderWithFrame:CGRectMake(0, 0, self.frame.size.width, height) andColor:color];
}

- (UIView *)createViewBackedTopBorderWithHeight:(CGFloat)height offSet:(CGPoint)offset andColor:(UIColor *)color {
    return [self getViewBackedOneSidedBorderWithFrame:CGRectMake(offset.x, offset.y, self.frame.size.width, height) andColor:color];
}

- (CALayer *)addTopBorderWithHeight:(CGFloat)height andColor:(UIColor *)color {
    return [self addOneSidedBorderWithFrame:CGRectMake(0, 0, self.frame.size.width, height) andColor:color];
}

- (void)addViewBackedTopBorderWithHeight:(CGFloat)height andColor:(UIColor *)color {
    [self addViewBackedOneSidedBorderWithFrame:CGRectMake(0, 0, self.frame.size.width, height) andColor:color];
}

/**
 Top + Offset
 */
- (CALayer *)createTopBorderWithHeight:(CGFloat)height color:(UIColor *)color leftOffset:(CGFloat)leftOffset rightOffset:(CGFloat)rightOffset andTopOffset:(CGFloat)topOffset {
    return [self getOneSidedBorderWithFrame:CGRectMake(0 + leftOffset, 0 + topOffset, self.frame.size.width - leftOffset - rightOffset, height) andColor:color];
}

- (UIView *)createViewBackedTopBorderWithHeight:(CGFloat)height color:(UIColor *)color leftOffset:(CGFloat)leftOffset rightOffset:(CGFloat)rightOffset andTopOffset:(CGFloat)topOffset {
    return [self getViewBackedOneSidedBorderWithFrame:CGRectMake(0 + leftOffset, 0 + topOffset, self.frame.size.width - leftOffset - rightOffset, height) andColor:color];
}

- (void)addTopBorderWithHeight:(CGFloat)height color:(UIColor *)color leftOffset:(CGFloat)leftOffset rightOffset:(CGFloat)rightOffset andTopOffset:(CGFloat)topOffset {
    [self addOneSidedBorderWithFrame:CGRectMake(0 + leftOffset, 0 + topOffset, self.frame.size.width - leftOffset - rightOffset, height) andColor:color];
}

- (void)addViewBackedTopBorderWithHeight:(CGFloat)height color:(UIColor *)color leftOffset:(CGFloat)leftOffset rightOffset:(CGFloat)rightOffset andTopOffset:(CGFloat)topOffset {
    [self addViewBackedOneSidedBorderWithFrame:CGRectMake(0 + leftOffset, 0 + topOffset, self.frame.size.width - leftOffset - rightOffset, height) andColor:color];
}

/**
 Right
 */
- (CALayer *)createRightBorderWithWidth:(CGFloat)width andColor:(UIColor *)color {
    return [self getOneSidedBorderWithFrame:CGRectMake(self.frame.size.width - width, 0, width, self.frame.size.height) andColor:color];
}

- (UIView *)createViewBackedRightBorderWithWidth:(CGFloat)width offSet:(CGPoint)offset andColor:(UIColor *)color {
    return [self getViewBackedOneSidedBorderWithFrame:CGRectMake(self.frame.size.width - width + offset.x, offset.y, width, self.frame.size.height) andColor:color];
}

- (void)addRightBorderWithWidth:(CGFloat)width andColor:(UIColor *)color {
    [self addOneSidedBorderWithFrame:CGRectMake(self.frame.size.width - width, 0, width, self.frame.size.height) andColor:color];
}

- (void)addViewBackedRightBorderWithWidth:(CGFloat)width andColor:(UIColor *)color {
    [self addViewBackedOneSidedBorderWithFrame:CGRectMake(self.frame.size.width - width, 0, width, self.frame.size.height) andColor:color];
}

/**
 Right + Offset
 */
- (CALayer *)createRightBorderWithWidth:(CGFloat)width color:(UIColor *)color rightOffset:(CGFloat)rightOffset topOffset:(CGFloat)topOffset andBottomOffset:(CGFloat)bottomOffset {
    return [self getOneSidedBorderWithFrame:CGRectMake(self.frame.size.width - width - rightOffset, 0 + topOffset, width, self.frame.size.height - topOffset - bottomOffset) andColor:color];
}

- (UIView *)createViewBackedRightBorderWithWidth:(CGFloat)width color:(UIColor *)color rightOffset:(CGFloat)rightOffset topOffset:(CGFloat)topOffset andBottomOffset:(CGFloat)bottomOffset {
    return [self getViewBackedOneSidedBorderWithFrame:CGRectMake(self.frame.size.width - width - rightOffset, 0 + topOffset, width, self.frame.size.height - topOffset - bottomOffset) andColor:color];
}

- (void)addRightBorderWithWidth:(CGFloat)width color:(UIColor *)color rightOffset:(CGFloat)rightOffset topOffset:(CGFloat)topOffset andBottomOffset:(CGFloat)bottomOffset {
    [self addOneSidedBorderWithFrame:CGRectMake(self.frame.size.width - width - rightOffset, 0 + topOffset, width, self.frame.size.height - topOffset - bottomOffset) andColor:color];
}

- (void)addViewBackedRightBorderWithWidth:(CGFloat)width color:(UIColor *)color rightOffset:(CGFloat)rightOffset topOffset:(CGFloat)topOffset andBottomOffset:(CGFloat)bottomOffset {
    [self addViewBackedOneSidedBorderWithFrame:CGRectMake(self.frame.size.width - width - rightOffset, 0 + topOffset, width, self.frame.size.height - topOffset - bottomOffset) andColor:color];
}

/**
 Bottom
 */
- (CALayer *)createBottomBorderWithHeight:(CGFloat)height andColor:(UIColor *)color {
    return [self getOneSidedBorderWithFrame:CGRectMake(0, self.frame.size.height - height, self.frame.size.width, height) andColor:color];
}

- (UIView *)createViewBackedBottomBorderWithHeight:(CGFloat)height offSet:(CGPoint)offset andColor:(UIColor *)color {
    return [self getViewBackedOneSidedBorderWithFrame:CGRectMake(offset.x, self.frame.size.height - height - offset.y, self.frame.size.width, height) andColor:color];
}

- (void)addBottomBorderWithHeight:(CGFloat)height andColor:(UIColor *)color {
    [self addOneSidedBorderWithFrame:CGRectMake(0, self.frame.size.height - height, self.frame.size.width, height) andColor:color];
}

- (void)addViewBackedBottomBorderWithHeight:(CGFloat)height andColor:(UIColor *)color {
    [self addViewBackedOneSidedBorderWithFrame:CGRectMake(0, self.frame.size.height - height, self.frame.size.width, height) andColor:color];
}

/**
 Bottom + Offset
 */
- (CALayer *)createBottomBorderWithHeight:(CGFloat)height color:(UIColor *)color leftOffset:(CGFloat)leftOffset rightOffset:(CGFloat)rightOffset andBottomOffset:(CGFloat)bottomOffset {
    return [self getOneSidedBorderWithFrame:CGRectMake(0 + leftOffset, self.frame.size.height - height - bottomOffset, self.frame.size.width - leftOffset - rightOffset, height) andColor:color];
}

- (UIView *)createViewBackedBottomBorderWithHeight:(CGFloat)height color:(UIColor *)color leftOffset:(CGFloat)leftOffset rightOffset:(CGFloat)rightOffset andBottomOffset:(CGFloat)bottomOffset {
    return [self getViewBackedOneSidedBorderWithFrame:CGRectMake(0 + leftOffset, self.frame.size.height - height - bottomOffset, self.frame.size.width - leftOffset - rightOffset, height) andColor:color];
}

- (void)addBottomBorderWithHeight:(CGFloat)height color:(UIColor *)color leftOffset:(CGFloat)leftOffset rightOffset:(CGFloat)rightOffset andBottomOffset:(CGFloat)bottomOffset {
    [self addOneSidedBorderWithFrame:CGRectMake(0 + leftOffset, self.frame.size.height - height - bottomOffset, self.frame.size.width - leftOffset - rightOffset, height) andColor:color];
}

- (void)addViewBackedBottomBorderWithHeight:(CGFloat)height color:(UIColor *)color leftOffset:(CGFloat)leftOffset rightOffset:(CGFloat)rightOffset andBottomOffset:(CGFloat)bottomOffset {
    [self addViewBackedOneSidedBorderWithFrame:CGRectMake(0 + leftOffset, self.frame.size.height - height - bottomOffset, self.frame.size.width - leftOffset - rightOffset, height) andColor:color];
}

/**
 Left
 */
- (CALayer *)createLeftBorderWithWidth:(CGFloat)width andColor:(UIColor *)color {
    return [self getOneSidedBorderWithFrame:CGRectMake(0, 0, width, self.frame.size.height) andColor:color];
}

- (UIView *)createViewBackedLeftBorderWithWidth:(CGFloat)width offSet:(CGPoint)offset andColor:(UIColor *)color {
    return [self getViewBackedOneSidedBorderWithFrame:CGRectMake(offset.x, offset.y, width, self.frame.size.height) andColor:color];
}

- (void)addLeftBorderWithWidth:(CGFloat)width andColor:(UIColor *)color {
    [self addOneSidedBorderWithFrame:CGRectMake(0, 0, width, self.frame.size.height) andColor:color];
}

- (void)addViewBackedLeftBorderWithWidth:(CGFloat)width andColor:(UIColor *)color {
    [self addViewBackedOneSidedBorderWithFrame:CGRectMake(0, 0, width, self.frame.size.height) andColor:color];
}

/**
 Left + Offset
 */
- (CALayer *)createLeftBorderWithWidth:(CGFloat)width color:(UIColor *)color leftOffset:(CGFloat)leftOffset topOffset:(CGFloat)topOffset andBottomOffset:(CGFloat)bottomOffset {
    return [self getOneSidedBorderWithFrame:CGRectMake(0 + leftOffset, 0 + topOffset, width, self.frame.size.height - topOffset - bottomOffset) andColor:color];
}

- (UIView *)createViewBackedLeftBorderWithWidth:(CGFloat)width color:(UIColor *)color leftOffset:(CGFloat)leftOffset topOffset:(CGFloat)topOffset andBottomOffset:(CGFloat)bottomOffset {
    return [self getViewBackedOneSidedBorderWithFrame:CGRectMake(0 + leftOffset, 0 + topOffset, width, self.frame.size.height - topOffset - bottomOffset) andColor:color];
}

- (void)addLeftBorderWithWidth:(CGFloat)width color:(UIColor *)color leftOffset:(CGFloat)leftOffset topOffset:(CGFloat)topOffset andBottomOffset:(CGFloat)bottomOffset {
    [self addOneSidedBorderWithFrame:CGRectMake(0 + leftOffset, 0 + topOffset, width, self.frame.size.height - topOffset - bottomOffset) andColor:color];
}

- (void)addViewBackedLeftBorderWithWidth:(CGFloat)width color:(UIColor *)color leftOffset:(CGFloat)leftOffset topOffset:(CGFloat)topOffset andBottomOffset:(CGFloat)bottomOffset {
    [self addViewBackedOneSidedBorderWithFrame:CGRectMake(0 + leftOffset, 0 + topOffset, width, self.frame.size.height - topOffset - bottomOffset) andColor:color];
}

- (CALayer *)addOneSidedBorderWithFrame:(CGRect)frame andColor:(UIColor *)color {
    CALayer *border = [CALayer layer];
    border.frame = frame;
    [border setBackgroundColor:color.CGColor];
    [self.layer addSublayer:border];
    return border;
}

- (CALayer *)getOneSidedBorderWithFrame:(CGRect)frame andColor:(UIColor *)color {
    CALayer *border = [CALayer layer];
    border.frame = frame;
    [border setBackgroundColor:color.CGColor];
    return border;
}

- (void)addViewBackedOneSidedBorderWithFrame:(CGRect)frame andColor:(UIColor *)color {
    UIView *border = [[UIView alloc] initWithFrame:frame];
    [border setBackgroundColor:color];
    [self addSubview:border];
}

- (UIView *)getViewBackedOneSidedBorderWithFrame:(CGRect)frame andColor:(UIColor *)color {
    UIView *border = [[UIView alloc] initWithFrame:frame];
    [border setBackgroundColor:color];
    return border;
}

@end

#pragma mark - Constant

static const void *kUIViewFMborderLeftBorderViewKey = &kUIViewFMborderLeftBorderViewKey;
static const void *kUIViewFMborderRightBorderViewKey = &kUIViewFMborderRightBorderViewKey;
static const void *kUIViewFMborderTopBorderViewKey = &kUIViewFMborderTopBorderViewKey;
static const void *kUIViewFMborderBottomBorderViewKey = &kUIViewFMborderBottomBorderViewKey;

@implementation UIView (FMBorders)

- (void)fm_addViewBackedBorderWithOptions:(FMUIViewBorder)borderOptions size:(CGFloat)size color:(UIColor *)color {
    [self fm_addViewBackedBorderWithOptions:borderOptions offSet:CGPointZero size:size color:color];
}

- (void)fm_addViewBackedBorderWithOptions:(FMUIViewBorder)borderOptions offSet:(CGPoint)offset size:(CGFloat)size color:(UIColor *)color {
    if ((borderOptions == FMUIViewBorderNone) || (size <= 0) || (CGColorGetAlpha(color.CGColor) <= 0.f)) {
        return;
    }

    if ((borderOptions & FMUIViewBorderLeft) != 0) {

        UIView *leftBorder = [self createViewBackedLeftBorderWithWidth:size offSet:offset andColor:color];
        leftBorder.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleRightMargin;
        [self addSubview:leftBorder];
        self.fm_leftBorderView = leftBorder;
    }

    if ((borderOptions & FMUIViewBorderRight) != 0) {

        UIView *rightBorder = [self createViewBackedRightBorderWithWidth:size offSet:offset andColor:color];
        rightBorder.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleLeftMargin;
        [self addSubview:rightBorder];
        self.fm_rightBorderView = rightBorder;
    }

    if ((borderOptions & FMUIViewBorderTop) != 0) {

        UIView *topBorder = [self createViewBackedTopBorderWithHeight:size offSet:offset andColor:color];
        topBorder.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin;
        [self addSubview:topBorder];
        self.fm_topBorderView = topBorder;
    }

    if ((borderOptions & FMUIViewBorderBottom) != 0) {

        UIView *bottomBorder = [self createViewBackedBottomBorderWithHeight:size offSet:offset andColor:color];
        bottomBorder.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
        [self addSubview:bottomBorder];
        self.fm_bottomBorderView = bottomBorder;
    }
}

- (void)fm_removeExistedBorderWithOptions:(FMUIViewBorder)borderOptions {

    if (borderOptions == FMUIViewBorderNone) {

        return;
    }

    if ((borderOptions & FMUIViewBorderLeft) != 0) {

        self.fm_leftBorderView = nil;
    }

    if ((borderOptions & FMUIViewBorderRight) != 0) {

        self.fm_rightBorderView = nil;
    }

    if ((borderOptions & FMUIViewBorderTop) != 0) {

        self.fm_topBorderView = nil;
    }

    if ((borderOptions & FMUIViewBorderBottom) != 0) {

        self.fm_bottomBorderView = nil;
    }
}

#pragma mark -Associated Property

- (UIView *)fm_leftBorderView {

    return objc_getAssociatedObject(self, kUIViewFMborderLeftBorderViewKey);
}

- (void)setFm_leftBorderView:(UIView *)fm_leftBorderView {

    if (self.fm_leftBorderView) {

        [self.fm_leftBorderView removeFromSuperview];
    }

    objc_setAssociatedObject(self, kUIViewFMborderLeftBorderViewKey, fm_leftBorderView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIView *)fm_rightBorderView {

    return objc_getAssociatedObject(self, kUIViewFMborderRightBorderViewKey);
}

- (void)setFm_rightBorderView:(UIView *)fm_rightBorderView {

    if (self.fm_rightBorderView) {

        [self.fm_rightBorderView removeFromSuperview];
    }

    objc_setAssociatedObject(self, kUIViewFMborderRightBorderViewKey, fm_rightBorderView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIView *)fm_topBorderView {

    return objc_getAssociatedObject(self, kUIViewFMborderTopBorderViewKey);
}

- (void)setFm_topBorderView:(UIView *)fm_topBorderView {

    if (self.fm_topBorderView) {

        [self.fm_topBorderView removeFromSuperview];
    }

    objc_setAssociatedObject(self, kUIViewFMborderTopBorderViewKey, fm_topBorderView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIView *)fm_bottomBorderView {

    return objc_getAssociatedObject(self, kUIViewFMborderBottomBorderViewKey);
}

- (void)setFm_bottomBorderView:(UIView *)fm_bottomBorderView {

    if (self.fm_bottomBorderView) {

        [self.fm_bottomBorderView removeFromSuperview];
    }

    objc_setAssociatedObject(self, kUIViewFMborderBottomBorderViewKey, fm_bottomBorderView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end

@implementation UIView (FMSectionBorders)

- (void)fm_addViewBackedSectionDivideOutWithOptions:(FMUIViewBorder)options color:(UIColor *)color {
    CGFloat height = ([[UIScreen mainScreen] bounds].size.height - (double) 480) < DBL_EPSILON ? 1 : 1 / [UIScreen mainScreen].scale;
    [self fm_addViewBackedBorderWithOptions:options
                                       size:height
                                      color:color];
}

- (void)fm_addViewBackedSectionDivideInWithOptions:(FMUIViewBorder)options color:(UIColor *)color {
    CGFloat height = ([[UIScreen mainScreen] bounds].size.height - (double) 480) < DBL_EPSILON ? 1 : 1 / [UIScreen mainScreen].scale;
    [self fm_addViewBackedBorderWithOptions:options
                                       size:height
                                      color:color];
}

- (void)fm_addViewBackedSectionDivideInWithOptions:(FMUIViewBorder)options offSet:(CGPoint)offset color:(UIColor *)color {
    CGFloat height = ([[UIScreen mainScreen] bounds].size.height - (double) 480) < DBL_EPSILON ? 1 : 1 / [UIScreen mainScreen].scale;
    [self fm_addViewBackedBorderWithOptions:options
                                     offSet:offset
                                       size:height
                                      color:color];
}

- (void)fm_addBottomDivideWithOffLeftX:(CGFloat)offLeftX offRightX:(CGFloat)offRightX color:(UIColor *)color {
    CGFloat height = ([[UIScreen mainScreen] bounds].size.height - (double) 480) < DBL_EPSILON ? 1 : 1 / [UIScreen mainScreen].scale;
    UIView *bottomBorder = [self getViewBackedOneSidedBorderWithFrame:CGRectMake(offLeftX,
                                                                                 self.frame.size.height - height - 0,
                                                                                 self.frame.size.width - offLeftX - offRightX,
                                                                                 height)
                                                             andColor:color];
    bottomBorder.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
    [self addSubview:bottomBorder];
    self.fm_bottomBorderView = bottomBorder;
}

@end
