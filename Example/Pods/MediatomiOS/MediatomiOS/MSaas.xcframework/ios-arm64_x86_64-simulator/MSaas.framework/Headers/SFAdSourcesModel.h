//
//  SFAdSourcesModel.h
//  MSaas
//
//  Created by lurich on 2022/2/23.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    SFApiBidAD = 1,
    SFSDKServerBidAD,
    SFSDKBidAD,
    SFSDKAD,
    SFSDKBottomAD,
} SFADType;

@interface SFAdSourcesModel : NSObject

@property (nonatomic, assign)   NSInteger adv_id;
@property (nonatomic, copy)     NSString *tagid;
@property (nonatomic, copy)     NSString *app_id;
@property (nonatomic, copy)     NSString *app_key;
@property (nonatomic, assign)   double bidfloor;
@property (nonatomic, copy)     NSString *ext;
@property (nonatomic, copy)     NSString *skip;
@property (nonatomic, copy)     NSString *is_download;
@property (nonatomic, copy)     NSString *slot_id;
@property (nonatomic, assign)   NSInteger sensitivity;
@property (nonatomic, copy)     NSString *close_button_type;
@property (nonatomic, assign)   NSInteger count_down;
@property (nonatomic, assign)   NSInteger button_size;
@property (nonatomic, copy)     NSString *adv_name;
@property (nonatomic, copy)     NSString *hotspot;
@property (nonatomic, assign)   NSInteger hotspot_type;
@property (nonatomic, copy)     NSString *red_package_rain;
@property (nonatomic, copy)     NSString *ad_type;
@property (nonatomic, copy)     NSString *ad_style;
@property (nonatomic, assign)   NSInteger draw_type;
@property (nonatomic, copy)     NSString *button_position;
@property (nonatomic, copy)     NSString *ext1;
@property (nonatomic, assign)   NSInteger is_gromore;
@property (nonatomic, copy)     NSString *auto_close;
@property (nonatomic, assign)   NSInteger close_countdown;
@property (nonatomic, assign)   NSInteger scale_type;
@property (nonatomic, assign)   NSInteger only_button;
@property (nonatomic, assign)   NSInteger resp_area_ratio;
@property (nonatomic, assign)   NSInteger close_button_freq;
@property (nonatomic, assign)   NSInteger close_button_interval;
@property (nonatomic, copy)     NSString *display_effective_count;
@property (nonatomic, assign)   NSInteger display_countdown;
@property (nonatomic, assign)   NSInteger animate_start_time;
@property (nonatomic, assign)   NSInteger animate_time;
@property (nonatomic, assign)   NSInteger is_full_screen;
@property (nonatomic, assign)   NSInteger rd_countdown;
@property (nonatomic, assign)   NSInteger rd_skip_time;
@property (nonatomic, assign)   NSInteger rd_type;
@property (nonatomic, copy)     NSString *rd_click_time;
@property (nonatomic, assign)   NSInteger rd_auto_type;
@property (nonatomic, assign)   NSInteger rd_auto_time;
@property (nonatomic, copy)     NSString *rd_autoskip_sts;
@property (nonatomic, copy)     NSString *bidfloor_filter_sts;
@property (nonatomic, copy)     NSString *cp_close_button;
@property (nonatomic, assign)   NSInteger cp_display_countdown;
@property (nonatomic, assign)   double floating_value;

@property (nonatomic, assign)   SFADType adType;
@property (nonatomic, copy)     NSString *token;
@property (nonatomic, assign)   double price;
@property (nonatomic, assign)   double old_price;
@property (nonatomic, copy)     NSString *place_id;
@property (nonatomic, copy)     NSString *group_id;
@property (nonatomic, copy)     NSString *test_id;
@property (nonatomic, copy)     NSString *nurl;
@property (nonatomic, copy)     NSString *lurl;
@property (nonatomic, copy)     NSString *timeLocal;
@property (nonatomic, copy)     NSString *bidTimeLocal;
@property (nonatomic, assign)   BOOL isCache;
@property (nonatomic, copy)     NSString *cid;
@property (nonatomic, assign)   NSInteger ctype;
@property (nonatomic, copy)     NSString *title;
@property (nonatomic, copy)     NSString *desc;
@property (nonatomic, copy)     NSString *req_id;
@property (nonatomic, assign)   NSInteger roundIndex;
@property (nonatomic, copy)     NSString *is_cached;
@property (nonatomic, assign)   BOOL needZoomOut;
@property (nonatomic, copy)     NSString *adapter_class;
@property (nonatomic, assign)   BOOL is_proload;
@property (nonatomic, copy)     NSString *uniqueID;
@property (nonatomic, copy)     NSString *trackID;
@property (nonatomic)           NSTimeInterval startTime;
@property (nonatomic)           NSTimeInterval beginTime;
@property (nonatomic)           NSTimeInterval endTime;
@property (nonatomic, assign)   NSInteger refresh_num;

@property (nonatomic, assign)   CGFloat sf_ad_req_width;
@property (nonatomic, assign)   CGFloat sf_ad_req_height;
@property (nonatomic, assign)   CGFloat sf_ad_width;
@property (nonatomic, assign)   CGFloat sf_ad_height;
@property (nonatomic, assign)   CGFloat sf_ad_x1;
@property (nonatomic, assign)   CGFloat sf_ad_y1;
@property (nonatomic, assign)   CGFloat sf_ad_x2;
@property (nonatomic, assign)   CGFloat sf_ad_y2;
@property (nonatomic, assign)   CGFloat sf_ad_up_x;
@property (nonatomic, assign)   CGFloat sf_ad_up_y;
@property (nonatomic, assign)   CGFloat sf_ad_down_x;
@property (nonatomic, assign)   CGFloat sf_ad_down_y;
@property (nonatomic, assign)   CGFloat sf_ad_abs_up_x;
@property (nonatomic, assign)   CGFloat sf_ad_abs_up_y;
@property (nonatomic, assign)   CGFloat sf_ad_abs_down_x;
@property (nonatomic, assign)   CGFloat sf_ad_abs_down_y;
@property (nonatomic, copy)     NSString *sf_ad_doneTime;
@property (nonatomic, assign)   BOOL sf_ad_is_motion;
@property (nonatomic, assign)   BOOL sf_ad_is_api_cache;

/// MARK: 以下参数为block回调
@property (nonatomic, assign)   NSInteger type;
@property (nonatomic, copy)     NSError *error;
@property (nonatomic, copy)     NSString *clickUrl;
@property (nonatomic, strong, nullable) id managerObjc;
@property (nonatomic, weak, nullable) id adObjc;
@property (nonatomic, copy) NSDictionary *dataDict;
@property (nonatomic, copy, nullable) NSArray *views;
@property (nonatomic, weak)     UIView *showView;
@property (nonatomic, assign)   NSInteger status;
@property (nonatomic, assign)   NSInteger adv_place_type;
@property (nonatomic, copy)     NSString *adv_version;
@property (nonatomic, assign)   BOOL isCan;

@end

NS_ASSUME_NONNULL_END
