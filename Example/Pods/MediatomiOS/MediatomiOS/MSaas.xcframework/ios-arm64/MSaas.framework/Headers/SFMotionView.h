//
//  SFMotionView.h
//  MSaas
//
//  Created by lurich on 2022/1/11.
//

#import <UIKit/UIKit.h>
#import <CoreMotion/CoreMotion.h>

NS_ASSUME_NONNULL_BEGIN

@protocol SFMotionDelegate <NSObject>

- (void)iphoneMotionBegan:(CGRect)frame;

@end

@interface SFMotionView : UIView

- (instancetype)initWithFrame:(CGRect)frame isFeed:(BOOL)isFeed Type:(NSInteger)type;

@property (strong, nonatomic) CMMotionManager *motionManager;

@property (nonatomic, weak) id<SFMotionDelegate> delegate;

//1 : 有bottomView   0 ：无bottomView
@property (nonatomic, assign) NSInteger type;
//1 : 有bottomView   0 ：无bottomView
@property (nonatomic, assign) NSInteger gyroType;

@property (nonatomic) CGRect iconframe;

@property (nonatomic, assign) NSInteger sensitivity;
//0: 正常 1: 大 2: 超大
@property (nonatomic, assign) NSInteger scale_type;

//加速度
- (void)startAccelerometer;
//陀螺仪
- (void)startAccelerometerGyro;

- (void)stopMotion;

@end

NS_ASSUME_NONNULL_END
