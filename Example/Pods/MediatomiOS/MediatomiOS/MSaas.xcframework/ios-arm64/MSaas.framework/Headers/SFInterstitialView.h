//
//  SFInterstitialView.h
//  MSaas
//
//  Created by lurich on 2021/10/12.
//

#import <UIKit/UIKit.h>
#import <MSaas/SFSkipAdButton.h>

@class SFFeedAdData,SFAdSourcesModel;

NS_ASSUME_NONNULL_BEGIN

typedef void(^ShowBlock)(void);

@interface SFInterstitialView : UIView

@property (nonatomic, copy) NSString *html;

@property (nonatomic, copy) void(^clickBlock)(NSString *url);

@property (nonatomic) CGRect adFrame;

@property (nonatomic, strong) UIImageView *imageView;

@property (nonatomic, weak, nullable) SFAdSourcesModel *adModel;

@property (nonatomic, assign) double currentTime;

@property (nonatomic, strong) UIImageView *backImageView;

@property (nonatomic, strong) UIView *buttonView;

@property (nonatomic, strong, nullable) SFFeedAdData *model;

@property (nonatomic, assign) CGFloat topY;

@property (nonatomic, assign) NSInteger hotspot_type;

-(void)startGCDTimer;

@property (nonatomic, copy) ShowBlock block;

@property (nonatomic, copy) void(^cloaseBlock)(void);

@property (nonatomic, strong) SFSkipAdButton *timeBtn;

@end

NS_ASSUME_NONNULL_END
