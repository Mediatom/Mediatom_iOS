Pod::Spec.new do |s|
  s.name         = "MediatomiOS"
  s.version      = "2.8.3.2.7"
  s.summary      = "Mobile App Aggregation Ad SDK of Mediatom SDK for iOS."
  s.description  = <<-DESC
            Mediatom SDK is an advertising aggregation SDK that allows you to monetize iOS applications through Mediatom advertising.
                   DESC
  s.homepage     = "https://www.mediatom.cn/dockingdocs/detail?id=70"
  s.license      = { :type => "MIT" }
  s.author       = 'Lurich'

  
  s.platform     = :ios, '11.0'
  s.ios.deployment_target = '11.0'
  s.static_framework = true
  s.requires_arc = true
  s.swift_versions = '5.1'
  
  s.frameworks   = 'AssetsLibrary', 'MapKit', 'JavaScriptCore', 'StoreKit', 'MobileCoreServices', 'WebKit', 'MediaPlayer', 'CoreMedia', 'AVFoundation', 'CoreLocation', 'CoreTelephony', 'SystemConfiguration', 'AdSupport', 'CoreMotion', 'Security', 'QuartzCore', 'CoreGraphics', 'SafariServices', 'UIKit', 'Foundation', 'AppTrackingTransparency', 'DeviceCheck', 'CoreML'
  s.libraries    = 'c++', 'c++abi', 'resolv', 'xml2', 'bz2', 'z', 'iconv', 'sqlite3'
  
  s.xcconfig =   { 'OTHER_LDFLAGS' => ['-lObjC']}
  s.pod_target_xcconfig =   { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i' }
  
  s.source = { :http => "https://github.com/Mediatom/Mediatom_iOS/releases/download/#{s.version}/MediatomiOS.zip" }
    
  s.default_subspecs = 'MSaas'

  s.subspec 'MSaas' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.vendored_frameworks = 'MediatomiOS/MSaas.xcframework'
  end
  
  s.subspec 'SFAdCsjAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'Ads-CN/BUAdSDK'
    ss.dependency 'Ads-CN/CSJMediation'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdCsjAdapter.xcframework'
  end
  
  s.subspec 'SFAdGdtAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'GDTMobSDK'
    ss.dependency 'MediatomiOS/MSaas'
    # ss.dependency 'CSJMGdtAdapter'
    ss.vendored_frameworks = 'MediatomiOS/SFAdGdtAdapter.xcframework'
  end
  
  s.subspec 'SFAdKsAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'KSAdSDK'
    ss.dependency 'MediatomiOS/MSaas'
    # ss.dependency 'CSJMKsAdapter'
    ss.vendored_frameworks = 'MediatomiOS/SFAdKsAdapter.xcframework'
  end
  
  s.subspec 'SFAdJztAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'JADYun'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdJztAdapter.xcframework'
  end
  
  s.subspec 'SFAdBaiduAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'BaiduMobAdSDK', '~> 5.352'
    ss.dependency 'MediatomiOS/MSaas'
    # ss.dependency 'CSJMBaiduAdapter'
    ss.vendored_frameworks = 'MediatomiOS/SFAdBaiduAdapter.xcframework'
  end
  
  s.subspec 'SFAdBeiziAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'BeiZiSDK-iOS/BeiZiSDK-iOS'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdBeiziAdapter.xcframework'
  end
  
  s.subspec 'SFAdTbAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'TanxSDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdTbAdapter.xcframework'
  end
  
  s.subspec 'SFAdMsAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'MSMobAdSDK/MS'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdMsAdapter.xcframework'
  end
  
  s.subspec 'SFAdSigmobAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'SigmobAd-iOS'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdSigmobAdapter.xcframework'
  end
  
  s.subspec 'SFAdFlAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'FLAD/FLAdSaas'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdFlAdapter.xcframework'
  end
  
  s.subspec 'SFAdTmAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'TianmuSDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdTmAdapter.xcframework'
  end
  
  s.subspec 'SFAdHrAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'HRAdSDK/HR'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdHrAdapter.xcframework'
  end
  
  s.subspec 'SFAdYtAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    # ss.dependency 'YouTuiAdSDK'
    ss.dependency 'YDYtSDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdYtAdapter.xcframework'
  end
  
  s.subspec 'SFAdKdxfAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'YDKdxfSDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdKdxfAdapter.xcframework'
  end
  
  s.subspec 'SFAdZyAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'YDZySDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdZyAdapter.xcframework'
  end
  
  s.subspec 'SFAdLyAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'YDLySDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdLyAdapter.xcframework'
  end
  
  s.subspec 'SFAdUBiXAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'UBiXMediationSDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdUBiXAdapter.xcframework'
  end

  s.subspec 'SFTXUBiXAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'TXUBiXSDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFTXUBiXAdapter.xcframework'
  end
  
  
  
  
  s.subspec 'SFAdMtgAdapter' do |ss|
    ss.ios.deployment_target = '13.0'
    ss.dependency 'MintegralAdSDK/All', '7.7.3'
    ss.dependency 'AppLovinMediationMintegralAdapter', '7.7.3.0.0'
    ss.dependency 'TradPlusAdSDK/MintegralAdapter', '12.7.0'
    ss.dependency 'TPNMintegralSDKAdapter','6.4.12'
    ss.dependency 'GoogleMobileAdsMediationMintegral', '7.7.3.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.dependency 'MediatomiOS/SFAdTnAdapter'
    ss.dependency 'MediatomiOS/SFAdTpAdapter'
    ss.dependency 'MediatomiOS/SFAdApplovinAdapter'
    ss.dependency 'MediatomiOS/SFAdMobAdapter'
    ss.vendored_frameworks = 'MediatomiOS/SFAdMtgAdapter.xcframework'
  end
  
  s.subspec 'SFAdPangleAdapter' do |ss|
    ss.ios.deployment_target = '13.0'
    ss.dependency 'Ads-Global', '6.3.1.0'
    ss.dependency 'AppLovinMediationByteDanceAdapter', '6.3.1.0.0'
    ss.dependency 'TradPlusAdSDK/PangleAdapter', '12.7.0'
    ss.dependency 'TPNPangleSDKAdapter', '6.4.12.1'
    ss.dependency 'GoogleMobileAdsMediationPangle', '6.3.1.0.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.dependency 'MediatomiOS/SFAdTnAdapter'
    ss.dependency 'MediatomiOS/SFAdTpAdapter'
    ss.dependency 'MediatomiOS/SFAdApplovinAdapter'
    ss.dependency 'MediatomiOS/SFAdMobAdapter'
    ss.vendored_frameworks = 'MediatomiOS/SFAdPangleAdapter.xcframework'
  end
  
  s.subspec 'SFAdMetaAdapter' do |ss|
    ss.ios.deployment_target = '13.0'
    ss.dependency 'FBAudienceNetwork', '6.16.0'
    ss.dependency 'AppLovinMediationFacebookAdapter', '6.16.0.0'
    ss.dependency 'TradPlusAdSDK/FacebookAdapter', '12.7.0'
    ss.dependency 'TPNFacebookSDKAdapter', '6.4.12.2'
    ss.dependency 'GoogleMobileAdsMediationFacebook', '6.16.0.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.dependency 'MediatomiOS/SFAdTnAdapter'
    ss.dependency 'MediatomiOS/SFAdTpAdapter'
    ss.dependency 'MediatomiOS/SFAdApplovinAdapter'
    ss.dependency 'MediatomiOS/SFAdMobAdapter'
    ss.vendored_frameworks = 'MediatomiOS/SFAdMetaAdapter.xcframework'
  end
  
  s.subspec 'SFAdVungleAdapter' do |ss|
    ss.ios.deployment_target = '13.0'
    ss.dependency 'VungleAds', '7.4.2'
    ss.dependency 'AppLovinMediationVungleAdapter', '7.4.2.1'
    ss.dependency 'TradPlusAdSDK/VungleAdapter', '12.7.0'
    ss.dependency 'TPNVungleSDKAdapter', '6.4.12'
    ss.dependency 'GoogleMobileAdsMediationVungle', '7.4.2.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.dependency 'MediatomiOS/SFAdTnAdapter'
    ss.dependency 'MediatomiOS/SFAdTpAdapter'
    ss.dependency 'MediatomiOS/SFAdApplovinAdapter'
    ss.dependency 'MediatomiOS/SFAdMobAdapter'
    ss.vendored_frameworks = 'MediatomiOS/SFAdVungleAdapter.xcframework'
  end
  
  s.subspec 'SFAdInmobiAdapter' do |ss|
    ss.ios.deployment_target = '13.0'
    ss.dependency 'InMobiSDK', '10.8.0'
    ss.dependency 'AppLovinMediationInMobiAdapter', '10.8.0.0'
    ss.dependency 'TradPlusAdSDK/InMobiAdapter', '12.7.0'
    ss.dependency 'TPNInmobiSDKAdapter', '6.4.12.1'
    ss.dependency 'GoogleMobileAdsMediationInMobi', '10.8.0.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.dependency 'MediatomiOS/SFAdTnAdapter'
    ss.dependency 'MediatomiOS/SFAdTpAdapter'
    ss.dependency 'MediatomiOS/SFAdApplovinAdapter'
    ss.dependency 'MediatomiOS/SFAdMobAdapter'
    ss.vendored_frameworks = 'MediatomiOS/SFAdInmobiAdapter.xcframework'
  end
  
  s.subspec 'SFAdMobAdapter' do |ss|
    ss.ios.deployment_target = '13.0'
    ss.dependency 'Google-Mobile-Ads-SDK', '11.12.0'
    ss.dependency 'AppLovinMediationGoogleAdapter', '11.12.0.0'
    ss.dependency 'TradPlusAdSDK/AdMobAdapter', '12.7.0'
    ss.dependency 'TPNAdmobSDKAdapter', '6.4.12.3'
    ss.dependency 'MediatomiOS/MSaas'
    ss.dependency 'MediatomiOS/SFAdTnAdapter'
    ss.dependency 'MediatomiOS/SFAdTpAdapter'
    ss.vendored_frameworks = 'MediatomiOS/SFAdMobAdapter.xcframework'
  end
  
  s.subspec 'SFAdApplovinAdapter' do |ss|
    ss.ios.deployment_target = '13.0'
    ss.dependency 'AppLovinSDK', '13.0.1'
    ss.dependency 'TradPlusAdSDK/AppLovinAdapter', '12.7.0'
    ss.dependency 'TPNApplovinSDKAdapter', '6.4.12'
    ss.dependency 'GoogleMobileAdsMediationAppLovin', '13.0.1.0'
    
    ss.dependency 'AppLovinMediationChartboostAdapter', '9.8.0.0'
    ss.dependency 'AppLovinMediationIronSourceAdapter', '8.5.0.0.0'
    ss.dependency 'AppLovinMediationYandexAdapter', '7.8.0.0'
    ss.dependency 'AppLovinMediationFyberAdapter', '8.3.4.0'
    ss.dependency 'AppLovinMediationBigoAdsAdapter', '4.5.1.1'
    
    
    ss.dependency 'MediatomiOS/MSaas'
    ss.dependency 'MediatomiOS/SFAdTnAdapter'
    ss.dependency 'MediatomiOS/SFAdTpAdapter'
    ss.dependency 'MediatomiOS/SFAdMobAdapter'
    ss.vendored_frameworks = 'MediatomiOS/SFAdApplovinAdapter.xcframework'
  end
  
  s.subspec 'SFAdBigoAdapter' do |ss|
    ss.ios.deployment_target = '13.0'
    ss.dependency 'BigoADS', '4.5.1'
    ss.dependency 'TradPlusAdSDK/BigoAdapter', '12.7.0'
    ss.dependency 'TPNBigoSDKAdapter', '6.4.12'
    ss.dependency 'MediatomiOS/MSaas'
    ss.dependency 'MediatomiOS/SFAdTnAdapter'
    ss.dependency 'MediatomiOS/SFAdTpAdapter'
    ss.vendored_frameworks = 'MediatomiOS/SFAdBigoAdapter.xcframework'
  end
  
  s.subspec 'SFAdTnAdapter' do |ss|
    ss.ios.deployment_target = '13.0'
    ss.dependency 'TPNiOS','6.4.12'
    ss.dependency 'TraminiSDK','6.4.35'
    ss.dependency 'TPNIronSourceSDKAdapter','6.4.12.1'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdTnAdapter.xcframework'
  end
  
  s.subspec 'SFAdTpAdapter' do |ss|
    ss.ios.deployment_target = '13.0'
    ss.dependency 'TradPlusAdSDK', '12.7.0'
    
    ss.dependency 'TradPlusAdSDK/IronSourceAdapter', '12.7.0'
    ss.dependency 'TradPlusAdSDK/TPCrossAdapter', '12.7.0'
    ss.dependency 'TradPlusAdSDK/YandexAdapter', '12.7.0'
    ss.dependency 'TradPlusAdSDK/HeliumAdapter', '12.7.0'
    ss.dependency 'TradPlusAdSDK/FyberAdapter', '12.7.0'
    ss.dependency 'IronSourceSDK','8.5.0.0'
    ss.dependency 'YandexMobileAds', '7.8.0'
    ss.dependency 'ChartboostMediationSDK','5.2.0'
    ss.dependency 'ChartboostMediationAdapterChartboost','5.9.8.0.0'
    ss.dependency 'Fyber_Marketplace_SDK', '8.3.4'
    
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdTpAdapter.xcframework'
  end
  
  
  
  
  s.subspec 'SFAdUnityAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'UnityAds','4.10.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdUnityAdapter.xcframework'
  end
  
  s.subspec 'SFAdIronsourceAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'IronSourceSDK', '8.5.0.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdIronsourceAdapter.xcframework'
  end
  
  s.subspec 'SFAdQmAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'QMAdSDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdQmAdapter.xcframework'
  end
  
  s.subspec 'SFAdDmAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'DomobSDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdDmAdapter.xcframework'
  end

  s.subspec 'SFAdIqyAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'YDIqySDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdIqyAdapter.xcframework'
  end

  s.subspec 'SFFireFlyAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFFireFlyAdapter.xcframework'
  end

 s.subspec 'SFAdQiMingAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'QiMingADXSDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdQiMingAdapter.xcframework'
  end

  s.subspec 'SFAdMedproAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'YDOwnSDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdMedproAdapter.xcframework'
  end

  s.subspec 'SFAdTakuAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdTakuAdapter.xcframework'
  end


end
