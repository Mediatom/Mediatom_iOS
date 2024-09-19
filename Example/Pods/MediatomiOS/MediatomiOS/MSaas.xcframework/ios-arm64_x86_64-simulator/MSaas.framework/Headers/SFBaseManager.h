//
//  SFBaseManager.h
//  AdDemo
//
//  Created by lurich on 2021/9/14.
//

#import <Foundation/Foundation.h>
#import <StoreKit/StoreKit.h>
#import <MSaas/SFNativeAdRenderProtocol.h>

#define M_Log(frmt, ...)                                                           \
if ([[NSUserDefaults standardUserDefaults] boolForKey:@"SF_DEBUG_UNION"]) {         \
    NSLog(@"【MediatomiOS】%@", [NSString stringWithFormat:frmt,##__VA_ARGS__]);     \
}

@class SFFeedAdData,SFAdSourcesModel,SFConfigModelAdplace,SFLaunchView,SFFullscreenVideoAdd,SFSkipAdButton,SFInterstitialView,SFBannerView,SFVideoConfig;
NS_ASSUME_NONNULL_BEGIN

typedef void(^SFADSuccess)(SFAdSourcesModel *model);

@interface SFBaseManager : NSObject

@property (nonatomic, copy, nullable) SFADSuccess successBlock;
@property (nonatomic, strong) SFAdSourcesModel * _Nullable baseModel;

/// 半开屏时传入的 logo view
@property (nonatomic, strong, nullable) UIView *bottomView;
@property (nonatomic, strong) UIWindow *window;
/// 开发者传入用来弹出目标页的ViewController
@property (nonatomic, weak) UIViewController *showAdController;
@property (nonatomic, strong) UIViewController *backVC;

/// MARK: 加载广告方法必须子类实现
/// 加载广告
- (void)loadADWithModel:(SFAdSourcesModel *)model;
/// 联盟竞价获取参数
- (NSDictionary *)getAdImpWithModel:(SFAdSourcesModel *)model;
/// 加载bidding广告
- (void)loadBiddingADWithModel:(SFAdSourcesModel *)model;

/// 销毁属性，防止内存泄漏
- (void)deallocAllProperty;
/// 个性化推荐广告设置  1:关闭个性化推荐   0:打开个性化推荐    默认为0
+ (void)setPersonalizedState:(NSNumber *)state;

@property (nonatomic, strong) SFAdSourcesModel * _Nullable sourceModel;
/// 联盟竞价失败原因上报
- (void)biddingAdFailWithPrice:(NSString *)price;
/// 联盟竞价成功上报
- (void)biddingAdSuccessWithPrice:(NSString *)price SecondPrice:(NSString *)secondPrice;
/// 竞价ECPM
- (void)s2sBidECPMWithPrice:(NSString *)price;
/// 竞价是否有效
- (void)isValidBidECPMWithPrice:(double)price;
/// 广告信息
- (void)adJsonDict:(NSObject *)baseAd;
/// 以下为测试方法请勿使用
- (void)showAd:(UIView *)view;

/// 子类自定义时可实现的视图对象
@property (nonatomic, strong, nullable) SFLaunchView *yxADView;
@property (nonatomic, strong, nullable) SFInterstitialView *sf_InterstitialView;
@property (nonatomic, strong, nullable) SFBannerView *sf_bannerView;
@property (nonatomic, strong, nullable) UIButton *closeBtn;
@property (nonatomic, strong, nullable) SFSkipAdButton *skipButton;
@property (nonatomic, strong, nullable) SFVideoConfig *videoConfig;

/// 获取最顶层控制器
- (UIViewController *)topVC;
/// UIViewLayoutConstraintCreation
- (void)sf_ViewAnchorWithView:(UIView *)view Top:(NSLayoutYAxisAnchor *)top Left:(NSLayoutXAxisAnchor *)left Bottom:(NSLayoutYAxisAnchor *)bottom Right:(NSLayoutXAxisAnchor *)right Padding:(UIEdgeInsets)padding Size:(CGSize)size;
- (NSString *)getNowDateWithFormat:(NSString *)format;
- (UIImage*)imageFromView:(UIView*)view;

@end

@interface SFBaseManager (SFSplashAdd)

/// 开屏尺寸
@property (nonatomic) CGRect frame;
/// 跳过时间
@property (nonatomic) NSInteger duration;
/// 等待时间
@property (nonatomic) NSInteger waitDataDuration;
/// 是否
@property (nonatomic) NSInteger hotspot_type;
/// MARK: 展示开屏广告
- (void)showSplashAdInWindow:(UIWindow *)window withBottomView:(UIView *)bottomView;
- (void)showSplashAdWithBottomView:(UIView *)bottomView;

@end

@interface SFBaseManager (SFRewardVideoAdd)

/// MARK: 展示激励视频
- (void)showRewardVideoAD;

@end

@interface SFBaseManager (SFBannerAdd)

/// 广告尺寸
@property (nonatomic) CGSize size;
/// 是否轮播
@property (nonatomic, assign) BOOL loop;
/// 轮播间隔
@property (nonatomic, assign) int interval;
/// MARK: 展示横幅广告
- (void)showBannerAdWithView:(UIView *)view;

@end

@interface SFBaseManager (SFInterstitialAdd)

/// MARK: 展示插屏广告
- (void)showInterstitialAd;

@end

@interface SFBaseManager (SFFeedAdd)

/// 原生广告,模板广告的请求个数
@property (nonatomic) NSInteger adCount;

/// 原生广告绑定视图和注册
- (void)registerAdViewForBindImage:(UIImageView *)view adData:(SFFeedAdData *)adData clickableViews:(NSArray *)views;

/// 新版注册视图，必须子类去实现
- (void)registerAdForView:(UIView<SFNativeAdRenderProtocol> *)view adData:(SFFeedAdData *)adData;

/// 解绑视图点击
- (void)unregisterAdData:(SFFeedAdData *)adData;
/// 模板广告渲染视图
- (void)renderViewWithViewArray:(NSArray *)viewArray;
/// 更换 showAdController
- (void)changeAdViewController:(UIViewController *)adViewController Data:(SFFeedAdData *)adData;

@end



@interface SFBaseManager (SFFullscreenVideoAdd)

/// MARK: 展示全屏视频广告
- (void)showFullscreenVideoAD;

@end
NS_ASSUME_NONNULL_END
