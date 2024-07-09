// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MintegralAdSDKBeta",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MintegralAdSDKBeta",
            targets: ["MintegralAdSDKBeta"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "MTGSDK",
                      url:"https://github.com/MTGSDK/MintegralAdSDK-Swift-Package-Beta/releases/download/0.0.9/MTGSDK.xcframework.zip",
                      checksum: "d2dd15cdf39b67124e7912cfa4747b1be779eded7534c265128eb1cc3b673bc1"),
        .binaryTarget(name: "MTGSDKBanner",
                      url:"https://github.com/MTGSDK/MintegralAdSDK-Swift-Package-Beta/releases/download/0.0.9/MTGSDKBanner.xcframework.zip",
                      checksum: "40cfc9056f678e9d1f7bfdcae24d86d2e17dc5b8d8ec1bb69fb6b7c6ac529f21"),
        .binaryTarget(name: "MTGSDKBidding",
                      url:"https://github.com/MTGSDK/MintegralAdSDK-Swift-Package-Beta/releases/download/0.0.9/MTGSDKBidding.xcframework.zip",
                      checksum: "c20915de6e5761004b422ee4b997d2f523e7526f536940683900f23519b53155"),
        .binaryTarget(name: "MTGSDKNewInterstitial",
                      url:"https://github.com/MTGSDK/MintegralAdSDK-Swift-Package-Beta/releases/download/0.0.9/MTGSDKNewInterstitial.xcframework.zip",
                      checksum: "a46c3281354d862af722c4bf447e774d2965ecaba8e05f14f5b1e84fec5f7310"),
        .binaryTarget(name: "MTGSDKInterstitialVideo",
                      url:"https://github.com/MTGSDK/MintegralAdSDK-Swift-Package-Beta/releases/download/0.0.9/MTGSDKInterstitialVideo.xcframework.zip",
                      checksum: "e9b3b8830794b7a7ae6a02ba19cbb75f457e3a191215da2c558667e6c3320b15"),
        .binaryTarget(name: "MTGSDKReward",
                      url:"https://github.com/MTGSDK/MintegralAdSDK-Swift-Package-Beta/releases/download/0.0.9/MTGSDKReward.xcframework.zip",
                      checksum: "cab53a84327d1315f86c22eafe9578b6a2928b2c0cff2a085f39e88e6c43ff9f"),
        .binaryTarget(name: "MTGSDKSplash",
                      url:"https://github.com/MTGSDK/MintegralAdSDK-Swift-Package-Beta/releases/download/0.0.9/MTGSDKSplash.xcframework.zip",
                      checksum: "afd6f5a25f0450d6e0fb39fa3f7a823a71ca67f1bb24329370a9f926bfbcd694"),
        .binaryTarget(name: "MTGSDKNativeAdvanced",
                      url:"https://github.com/MTGSDK/MintegralAdSDK-Swift-Package-Beta/releases/download/0.0.9/MTGSDKNativeAdvanced.xcframework.zip",
                      checksum: "2d4755de12f91798bcfeadf228492367ceba61d4f732095d2b9fef626c26c997"),
      
        
        .target(
            name: "MintegralAdSDKBeta",
            dependencies: [
                .target(name: "MTGSDK"),
                .target(name: "MTGSDKBanner"),
                .target(name: "MTGSDKBidding"),
                .target(name: "MTGSDKNewInterstitial"),
                .target(name: "MTGSDKInterstitialVideo"),
                .target(name: "MTGSDKReward"),
                .target(name: "MTGSDKSplash"),
                .target(name: "MTGSDKNativeAdvanced")
            ],
            linkerSettings: [
                .linkedFramework("UIKit"),
                .linkedFramework("WebKit"),
                .linkedFramework("MediaPlayer"),
                .linkedFramework("AdSupport"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("StoreKit"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("MobileCoreServices"),
                .linkedFramework("CoreMotion"),
                .linkedFramework("Accelerate" ),
                .linkedFramework("AudioToolbox"),
                .linkedFramework("JavaScriptCore"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("Security"),
                .linkedFramework("AppTrackingTransparency"),
                .linkedLibrary("z"),
                .linkedLibrary("resolv"),
                .linkedLibrary("sqlite3"),
                .linkedLibrary("bz2"),
                .linkedLibrary("xml2"),
                .linkedLibrary("iconv"),
                .linkedLibrary("c++abi"),
                .linkedLibrary("c++"),
            ]),
        .testTarget(
            name: "MintegralAdSDKTests",
            dependencies: ["MintegralAdSDKBeta"]),
    ]
)