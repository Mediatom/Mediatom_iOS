//
//  SFVideoConfig.h
//  MSaas
//
//  Created by lurich on 2021/10/27.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SFVideoConfig : NSObject

/**
 *  自动播放时，是否静音。默认 YES。loadAd 前设置。
 */
@property (nonatomic, assign) BOOL videoMuted;

@end

NS_ASSUME_NONNULL_END
