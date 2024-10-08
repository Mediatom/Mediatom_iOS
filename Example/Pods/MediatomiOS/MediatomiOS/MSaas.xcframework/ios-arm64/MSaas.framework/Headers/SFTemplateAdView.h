//
//  SFTemplateAdView.h
//  MSaas
//
//  Created by Lurich on 2023/7/24.
//

#import <UIKit/UIKit.h>
#import <MSaas/SFFeedAdData.h>
#import <MSaas/SFNativeAdRenderProtocol.h>

@interface SFTemplateAdView : UIView <SFNativeAdRenderProtocol>

@property (nonatomic, strong) UIImageView *adImageView;

- (instancetype)initWithFrame:(CGRect)frame Model:(SFFeedAdData *)model Style:(SFTemplateStyleOptions)style LRMargin:(CGFloat)left_right_margin TBMargin:(CGFloat)top_bottom_margin;

@end
