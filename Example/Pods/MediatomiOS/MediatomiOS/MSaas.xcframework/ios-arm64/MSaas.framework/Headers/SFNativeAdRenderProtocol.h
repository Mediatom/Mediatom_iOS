//
//  SFNativeAdRenderProtocol.h
//  MSaas
//
//  Created by Lurich on 2024/4/16.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol SFNativeAdRenderProtocol <NSObject>

// 广告主视图
- (UIView *)mainAdView;
// 广告图
- (UIImageView *)mainImageView;
// 可点击view的数组
- (NSArray *)clickViewArray;

@optional

// 广告主名称
- (UILabel *)advertiserLabel;
// 广告标题
- (UILabel *)titleLabel;
// 广告内容
- (UILabel *)contentLabel;
// 广告按钮
- (UILabel *)actionTextLabel;
// 广告评分
- (UILabel *)ratingLabel;
// 广告icon
- (UIImageView *)iconImageView;
// 广告logo
- (UIImageView *)logoImageView;
// 广告视频view
- (UIView *)mediaView;

@end
