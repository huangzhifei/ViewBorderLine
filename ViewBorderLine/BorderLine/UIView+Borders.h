//
//  UIView+Borders.h
//
//  Created by huangzhifei on 12/28/13.
//  Copyright (c) 2013 huangzhifei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Borders)

/**
 Top Border
 */
- (CALayer *)createTopBorderWithHeight:(CGFloat)height andColor:(UIColor *)color;
- (UIView *)createViewBackedTopBorderWithHeight:(CGFloat)height offSet:(CGPoint)offset andColor:(UIColor *)color;
- (CALayer *)addTopBorderWithHeight:(CGFloat)height andColor:(UIColor *)color;
- (void)addViewBackedTopBorderWithHeight:(CGFloat)height andColor:(UIColor *)color;

/**
 Top Border + Offsets
 */
- (CALayer *)createTopBorderWithHeight:(CGFloat)height color:(UIColor *)color leftOffset:(CGFloat)leftOffset rightOffset:(CGFloat)rightOffset andTopOffset:(CGFloat)topOffset;
- (UIView *)createViewBackedTopBorderWithHeight:(CGFloat)height color:(UIColor *)color leftOffset:(CGFloat)leftOffset rightOffset:(CGFloat)rightOffset andTopOffset:(CGFloat)topOffset;
- (void)addTopBorderWithHeight:(CGFloat)height color:(UIColor *)color leftOffset:(CGFloat)leftOffset rightOffset:(CGFloat)rightOffset andTopOffset:(CGFloat)topOffset;
- (void)addViewBackedTopBorderWithHeight:(CGFloat)height color:(UIColor *)color leftOffset:(CGFloat)leftOffset rightOffset:(CGFloat)rightOffset andTopOffset:(CGFloat)topOffset;

/**
 Right Border
 */
- (CALayer *)createRightBorderWithWidth:(CGFloat)width andColor:(UIColor *)color;
- (UIView *)createViewBackedRightBorderWithWidth:(CGFloat)width offSet:(CGPoint)offset andColor:(UIColor *)color;
- (void)addRightBorderWithWidth:(CGFloat)width andColor:(UIColor *)color;
- (void)addViewBackedRightBorderWithWidth:(CGFloat)width andColor:(UIColor *)color;

/**
 Right Border + Offsets
 */
- (CALayer *)createRightBorderWithWidth:(CGFloat)width color:(UIColor *)color rightOffset:(CGFloat)rightOffset topOffset:(CGFloat)topOffset andBottomOffset:(CGFloat)bottomOffset;
- (UIView *)createViewBackedRightBorderWithWidth:(CGFloat)width color:(UIColor *)color rightOffset:(CGFloat)rightOffset topOffset:(CGFloat)topOffset andBottomOffset:(CGFloat)bottomOffset;
- (void)addRightBorderWithWidth:(CGFloat)width color:(UIColor *)color rightOffset:(CGFloat)rightOffset topOffset:(CGFloat)topOffset andBottomOffset:(CGFloat)bottomOffset;
- (void)addViewBackedRightBorderWithWidth:(CGFloat)width color:(UIColor *)color rightOffset:(CGFloat)rightOffset topOffset:(CGFloat)topOffset andBottomOffset:(CGFloat)bottomOffset;

/**
 Bottom Border
 */
- (CALayer *)createBottomBorderWithHeight:(CGFloat)height andColor:(UIColor *)color;
- (UIView *)createViewBackedBottomBorderWithHeight:(CGFloat)height offSet:(CGPoint)offset andColor:(UIColor *)color;
- (void)addBottomBorderWithHeight:(CGFloat)height andColor:(UIColor *)color;
- (void)addViewBackedBottomBorderWithHeight:(CGFloat)height andColor:(UIColor *)color;

/**
 Bottom Border + Offsets
 */
- (CALayer *)createBottomBorderWithHeight:(CGFloat)height color:(UIColor *)color leftOffset:(CGFloat)leftOffset rightOffset:(CGFloat)rightOffset andBottomOffset:(CGFloat)bottomOffset;
- (UIView *)createViewBackedBottomBorderWithHeight:(CGFloat)height color:(UIColor *)color leftOffset:(CGFloat)leftOffset rightOffset:(CGFloat)rightOffset andBottomOffset:(CGFloat)bottomOffset;
- (void)addBottomBorderWithHeight:(CGFloat)height color:(UIColor *)color leftOffset:(CGFloat)leftOffset rightOffset:(CGFloat)rightOffset andBottomOffset:(CGFloat)bottomOffset;
- (void)addViewBackedBottomBorderWithHeight:(CGFloat)height color:(UIColor *)color leftOffset:(CGFloat)leftOffset rightOffset:(CGFloat)rightOffset andBottomOffset:(CGFloat)bottomOffset;

/**
 Left Border
 */
- (CALayer *)createLeftBorderWithWidth:(CGFloat)width andColor:(UIColor *)color;
- (UIView *)createViewBackedLeftBorderWithWidth:(CGFloat)width offSet:(CGPoint)offset andColor:(UIColor *)color;
- (void)addLeftBorderWithWidth:(CGFloat)width andColor:(UIColor *)color;
- (void)addViewBackedLeftBorderWithWidth:(CGFloat)width andColor:(UIColor *)color;

/**
 Left Border + Offsets
 */
- (CALayer *)createLeftBorderWithWidth:(CGFloat)width color:(UIColor *)color leftOffset:(CGFloat)leftOffset topOffset:(CGFloat)topOffset andBottomOffset:(CGFloat)bottomOffset;
- (UIView *)createViewBackedLeftBorderWithWidth:(CGFloat)width color:(UIColor *)color leftOffset:(CGFloat)leftOffset topOffset:(CGFloat)topOffset andBottomOffset:(CGFloat)bottomOffset;
- (void)addLeftBorderWithWidth:(CGFloat)width color:(UIColor *)color leftOffset:(CGFloat)leftOffset topOffset:(CGFloat)topOffset andBottomOffset:(CGFloat)bottomOffset;
- (void)addViewBackedLeftBorderWithWidth:(CGFloat)width color:(UIColor *)color leftOffset:(CGFloat)leftOffset topOffset:(CGFloat)topOffset andBottomOffset:(CGFloat)bottomOffset;

@end

typedef NS_OPTIONS(NSUInteger, FMUIViewBorder) {
    FMUIViewBorderNone = 1 << 0,
    FMUIViewBorderLeft = 1 << 1,
    FMUIViewBorderRight = 1 << 2,
    FMUIViewBorderTop = 1 << 3,
    FMUIViewBorderBottom = 1 << 4,

    FMUIViewBorderHorizontal = FMUIViewBorderLeft | FMUIViewBorderRight,
    FMUIViewBorderVertical = FMUIViewBorderTop | FMUIViewBorderBottom,
    FMUIViewBorderAll = FMUIViewBorderHorizontal | FMUIViewBorderVertical,
};

@interface UIView (FMBorders)

@property (nonatomic, strong, readonly) UIView *fm_leftBorderView;
@property (nonatomic, strong, readonly) UIView *fm_rightBorderView;
@property (nonatomic, strong, readonly) UIView *fm_topBorderView;
@property (nonatomic, strong, readonly) UIView *fm_bottomBorderView;

- (void)fm_addViewBackedBorderWithOptions:(FMUIViewBorder)borderOptions size:(CGFloat)size color:(UIColor *)color;
- (void)fm_removeExistedBorderWithOptions:(FMUIViewBorder)borderOptions;

@end

/**
 *  处理给section添加外\内分割线
 */
@interface UIView (FMSectionBorders)
/**
 *  为section添加外分割线
 */
- (void)fm_addViewBackedSectionDivideOutWithOptions:(FMUIViewBorder)options color:(UIColor *)color;

/**
 *  为section添加内分割线
 */
- (void)fm_addViewBackedSectionDivideInWithOptions:(FMUIViewBorder)options color:(UIColor *)color;

/**
 *  为section添加内分割线，带偏移
 */
- (void)fm_addViewBackedSectionDivideInWithOptions:(FMUIViewBorder)options offSet:(CGPoint)offset color:(UIColor *)color;

/**
 *  为section添加内分割线，带偏移
 */
- (void)fm_addBottomDivideWithOffLeftX:(CGFloat)offLeftX offRightX:(CGFloat)offRightX color:(UIColor *)color;

@end
