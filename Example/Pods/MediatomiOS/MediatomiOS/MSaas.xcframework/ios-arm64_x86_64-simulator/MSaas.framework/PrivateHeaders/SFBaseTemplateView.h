//
//  SFBaseTemplateView.h
//  MSaas
//
//  Created by lurich on 2021/11/25.
//

#import <UIKit/UIKit.h>
#import "SFNetTool.h"
#import "SFS2SModel.h"
#import "SFTemplateAdView.h"
#import "SFMotionView.h"

NS_ASSUME_NONNULL_BEGIN

@interface SFBaseTemplateView : UIView

@property (nonatomic, strong) UILabel *adNameLabel;

@property (nonatomic, strong) UIImageView *adImageView;

@property (nonatomic, strong) UIButton *adCloseButton;

@property (nonatomic, strong) UILabel *adContentLabel;

@property (nonatomic, strong) UIImageView *adIconView;

@property (nonatomic, strong) UILabel *adClickLabel;

@property (nonatomic, strong) UIFont *adContentFont;

@property (nonatomic, assign) BOOL isFirst;

@property (nonatomic, strong) SFS2SModelAds *s2sShowModel;

@property (nonatomic, strong) UIView *mediaView;
@property (nonatomic, strong) SFMotionView *shakeView;

- (instancetype)initWithFrame:(CGRect)frame LRMargin:(CGFloat)lr_margin TBMargin:(CGFloat)tb_margin;

@end

NS_ASSUME_NONNULL_END
