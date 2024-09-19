//
//  UIView+SFAdd.h
//  TestAdA
//
//  Created by lurich on 2021/4/12.
//  Copyright © 2021 . All rights reserved.
//

#import <UIKit/UIKit.h>

typedef struct SFLayoutAnchor {
    NSLayoutYAxisAnchor *top;
    NSLayoutXAxisAnchor *left;
    NSLayoutYAxisAnchor *bottom;
    NSLayoutXAxisAnchor *right;
} SFLayoutAnchor;

@interface UIView (SFAdd)

@property (assign, nonatomic) CGFloat sf_x;
@property (assign, nonatomic) CGFloat sf_y;
@property (assign, nonatomic, readonly) CGFloat sf_midX;
@property (assign, nonatomic, readonly) CGFloat sf_midY;
@property (assign, nonatomic, readonly) CGFloat sf_maxX;
@property (assign, nonatomic, readonly) CGFloat sf_maxY;
@property (assign, nonatomic) CGFloat sf_width;
@property (assign, nonatomic) CGFloat sf_height;
@property (assign, nonatomic) CGFloat sf_centerX;
@property (assign, nonatomic) CGFloat sf_centerY;
@property (assign, nonatomic) CGSize  sf_size;
@property (assign, nonatomic) CGPoint sf_origin;

- (void)sf_fillSuperView;
- (void)sf_anchorWithView:(UIView *)supview Padding:(UIEdgeInsets)padding;
- (void)sf_anchorWithTop:(NSLayoutYAxisAnchor *)top Left:(NSLayoutXAxisAnchor *)left Bottom:(NSLayoutYAxisAnchor *)bottom Right:(NSLayoutXAxisAnchor *)right;
- (void)sf_anchorWithTop:(NSLayoutYAxisAnchor *)top Left:(NSLayoutXAxisAnchor *)left Bottom:(NSLayoutYAxisAnchor *)bottom Right:(NSLayoutXAxisAnchor *)right Padding:(UIEdgeInsets)padding;
- (void)sf_anchorWithTop:(NSLayoutYAxisAnchor *)top Left:(NSLayoutXAxisAnchor *)left Bottom:(NSLayoutYAxisAnchor *)bottom Right:(NSLayoutXAxisAnchor *)right Padding:(UIEdgeInsets)padding Size:(CGSize)size;
- (void)sf_anchorWithSize:(CGSize)size;
- (void)sf_anchorWithLessThanSize:(CGSize)size;
- (void)sf_anchorWithGreaterThanSize:(CGSize)size;
- (void)sf_anchorAnimateChangeWithX:(NSLayoutXAxisAnchor *)centerX Y:(NSLayoutYAxisAnchor *)centerY;
- (void)sf_anchorGreaterThanWithTop:(NSLayoutYAxisAnchor *)top Left:(NSLayoutXAxisAnchor *)left Bottom:(NSLayoutYAxisAnchor *)bottom Right:(NSLayoutXAxisAnchor *)right Padding:(UIEdgeInsets)padding;
- (void)sf_anchorLessThanWithTop:(NSLayoutYAxisAnchor *)top Left:(NSLayoutXAxisAnchor *)left Bottom:(NSLayoutYAxisAnchor *)bottom Right:(NSLayoutXAxisAnchor *)right Padding:(UIEdgeInsets)padding;
- (void)sf_anchorWithMultiplier:(CGFloat)multiplier;
- (void)sf_anchorWithCenterX:(NSLayoutXAxisAnchor *)centerX CenterY:(NSLayoutYAxisAnchor *)centerY Constant:(CGFloat)constant;
/** 获取当前View的控制器对象 */
- (UIViewController *)sf_getCurrentViewController;
// 判断View是否显示在屏幕上
- (BOOL)sf_isDisplayedInScreen;

@end
