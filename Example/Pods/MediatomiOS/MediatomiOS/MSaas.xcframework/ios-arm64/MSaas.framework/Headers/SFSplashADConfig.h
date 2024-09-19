//
//  SFSplashADConfig.h
//  MSaas
//
//  Created by Lurich on 2023/11/6.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <MSaas/SFBaseAdManager.h>

typedef enum : NSUInteger {
    SFSplashADTypeStart,
    SFSplashADTypeRequestAD,
    SFSplashADTypeLoadAD,
    SFSplashADTypeFail,
    SFSplashADTypeShow,
    SFSplashADTypeClick,
    SFSplashADTypeClose
} SFSplashADType;

NS_ASSUME_NONNULL_BEGIN

@interface SFSplashADConfig : NSObject

/// 获取广告的广告位ID，必传
@property (nonatomic, copy) NSString *mediaID;

/// 1. 全屏接入：bottomView 不传入
/// 2. 半屏接入：bottomView 传入logo的view
/// 设置半屏广告的所含 logo 的 view
@property (nonatomic, strong) UIView * _Nullable bottomView;

/// 开屏广告的背景图片
/// 可以设置背景图片作为开屏加载时的默认背景
@property (nonatomic, strong) UIImage *backgroundImage;

/// 开屏广告的背景色
/// 可以设置开屏图片来作为开屏加载时的默认图片
@property (nonatomic, copy) UIColor *backgroundColor;

/// 开屏广告的背景图片的展示样式
@property (nonatomic) UIViewContentMode contentMode;

/// 自定义请求广告超时时间，单位秒，建议至少 3 秒以上，（PS：设置请求限时，可能影响广告收益，非必要不要设置）
@property (nonatomic) double timeout;

@end

@interface SFSplashResultInfo : NSObject

/// 广告信息
@property (nonatomic, strong) SFADInfo *info;

/// 广告填充失败时的错误信息
@property (nonatomic, copy, nullable) NSError *error;;

/// 开屏广告流程状态
@property (nonatomic, assign) SFSplashADType type;

@end

@interface UIWindow (SFSplashAD)

- (void)sf_showSplashADWithConfig:(void(^)(SFSplashADConfig *config))configBlock completion:(void(^)(SFSplashResultInfo *result))resultBlock;

@end

NS_ASSUME_NONNULL_END
