//
//  NativeAdTableViewCell.m
//  TestAdA
//
//  Created by lurich on 2020/4/4.
//  Copyright © 2020 YX. All rights reserved.
//

#import "NativeAdTableViewCell.h"
#import "ADInfo.h"

@interface NativeAdTableViewCell ()<SFNativeDelegate, SFNativeAdRenderProtocol>

@property (nonatomic, strong) SFNativeManager *nativeManager;
@property (nonatomic, strong) SFFeedAdData *adData;
@property (nonatomic, strong) UIView<SFNativeAdRenderProtocol> *adView;
@property (nonatomic, assign) BOOL isSelfRender;

@end

@implementation NativeAdTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    self.closeBtn.layer.masksToBounds = YES;
    self.closeBtn.layer.borderColor = [UIColor colorWithRed:208/255.0 green:208/255.0 blue:208/255.0 alpha:1].CGColor;
    self.closeBtn.layer.borderWidth = 1;
    self.closeBtn.layer.cornerRadius = 10;
}

- (void)loadAD{
    SFNativeManager *manager = [[SFNativeManager alloc] init];
    manager.mediaId = self.placeId;
    manager.adCount = 1;
    manager.size = CGSizeMake(SF_ScreenW, 0);
    manager.showAdController = self.showAdController;
    manager.delegate = self;
    [manager setTheme:SFTemplateExpressNativeNormalTheme];
    [manager loadAdData];
    self.nativeManager = manager;
}
/// MARK: SFNativeDelegate 代理回调
/**
 * 广告数据：加载成功
 */
- (void)nativeAdDidLoadDatas:(NSArray<__kindof SFFeedAdData *> *)datas{
    NSLog(@"广告数据：加载成功  %zd",datas.count);
    SFFeedAdData *adData = datas.firstObject;
    //请求单个广告示例
    self.adData = adData;
    if (adData.adView) {
        /// 模版广告直接添加
        [self.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
        [self addSubview:adData.adView];
    } else {
        adData.isRenderImage = YES;
        self.isSelfRender = YES;
        if (self.isSelfRender) {
            // 媒体自渲染
            [self useSelfRenderStyle];
        } else {
            // 使用内置模板自渲染
            [self useSDKTemplateStyle];
        }
    }
    NSLog(@"getCurrentBaseEcpmInfo = %@",[self.nativeManager getCurrentBaseEcpmInfo]);
    if (self.successBlock) {
        self.successBlock(1);
    }
}
- (void)registerAdView{
    if (self.adData.adView) {
        //模板 SDK 处理
    } else {
        [self.nativeManager registerAdForView:self.adView adData:self.adData];
    }
}
- (void)useSelfRenderStyle{
    self.adView = self;
    [self.clickButton setTitle:self.adData.buttonText forState:UIControlStateNormal];
    self.contentLabel.text = self.adData.adContent;
    self.titleLabel.text = self.adData.adTitle;
    self.adLogo.image = self.adData.logo;
}
// 实现代理
// 广告主视图
- (UIView *)mainAdView{
    return self.adBackView;
}
// 广告图
- (UIImageView *)mainImageView{
    return self.mainAdImageView;
}
// 可点击view的数组
- (NSArray *)clickViewArray{
    return @[self];
}
- (void)useSDKTemplateStyle{
    /*
       图文混合 SFTemplateStyleDefault  = 0,  // 默认样式
       文字浮层 SFTemplateStyleNest     = 1,
       上文下图 SFTemplateStyleTTBI     = 2,
       上图下文 SFTemplateStyleTIBT     = 3,
       左文右图 SFTemplateStyleLTRI     = 4,
       左图右文 SFTemplateStyleLIRT     = 5,
       纯图展示 SFTemplateStyleImage    = 6,
     */
    /// 使用 SDK 自带模版渲染广告示例（国内广告需自己额外添加一个关闭广告按钮）
    SFTemplateAdView *adView = [[SFTemplateAdView alloc] initWithFrame:CGRectMake(0, 0, self.adBackView.frame.size.width, 0) Model:self.adData Style:SFTemplateStyleLIRT LRMargin:0 TBMargin:0];
    [self.adBackView.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    [self.adBackView addSubview:adView];
    self.adView = adView;
}
- (CGFloat)cellHeight{
    if (self.adData.adView) {
        CGFloat cellHeight = self.adData.adView.bounds.size.height;
        return cellHeight;
    } else {
        /// 使用 SDK 模版渲染示例 (广告高度+cell 上下间距)
        if (self.isSelfRender) {
            // 媒体自渲染
            CGFloat cellHeight = 250;
            return cellHeight;
        } else {
            // 使用内置模板自渲染
            CGFloat cellHeight = self.adView.bounds.size.height + 20;
            return cellHeight;
        }
    }
}
/**
 * 广告数据：加载失败
 * @param error : 错误信息
 */
- (void)nativeAdDidFailed:(NSError *)error{
    NSLog(@"广告数据：加载失败 error = %@",error);
}
/**
 * 广告视图：展示
 */
- (void)nativeAdDidVisible{
    NSLog(@"广告视图：展示");
}
/**
 * 广告视图：点击
 */
- (void)nativeAdDidClicked{
    NSLog(@"广告数据：点击");
}
/**
 * 落地页或者appstoe返回事件
 */
- (void)nativeAdDidCloseOtherController{
    NSLog(@"广告数据：落地页或者appstoe返回事件");
}
/**
 * 视频广告播放状态更改回调
 * @param status 视频广告播放状态
 */
- (void)nativeAdVideoPlayerStatusChanged:(SFMediaPlayerStatus)status{
    NSLog(@"广告数据：视频广告播放状态更改回调 %d", (int)status);
}
/**
 * 广告视图：渲染成功
 */
- (void)nativeAdDidRenderSuccessWithADView:(UIView *)nativeAdView{
    NSLog(@"广告视图：渲染成功");
    if (self.successBlock) {
        self.successBlock(2);
    }
}
/**
 * 广告视图：关闭
 */
- (void)nativeAdDidCloseWithADView:(UIView *)nativeAdView{
    NSLog(@"广告视图：关闭");
    [self closeBtnClick];
}
- (IBAction)closeBtnClick {
    if (self.successBlock) {
        self.successBlock(3);
    }
}
- (void)deallocAllFeedProperty{
    NSLog(@"%s",__func__);
    //释放绑定的资源对象
    [self.nativeManager deallocAllFeedProperty];
}

@end
