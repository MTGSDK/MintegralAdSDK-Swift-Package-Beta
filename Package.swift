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
                      url:"https://github.com/MTGSDK/MintegralAdSDK-Swift-Package-Beta/releases/download/7.1.0/MTGSDK.xcframework.zip",
                      checksum: "f4b2fd5255f51e94dfc5bdc228d2c81f731e6242c0e7b54f146fd21ff0a42c47"),
        .binaryTarget(name: "MTGSDKBanner",
                      url:"https://github.com/MTGSDK/MintegralAdSDK-Swift-Package-Beta/releases/download/7.1.0/MTGSDKBanner.xcframework.zip",
                      checksum: "dd4047c5d80b4b5af40561ed6f0acd80867273492966d72c9c2085cb786b27d7"),
        .binaryTarget(name: "MTGSDKBidding",
                      url:"https://github.com/MTGSDK/MintegralAdSDK-Swift-Package-Beta/releases/download/7.1.0/MTGSDKBidding.xcframework.zip",
                      checksum: "0c13e55612725814b3daab4e6ced28afc5ef4a8f8ab413e6c84a70be34cd83bc"),
        .binaryTarget(name: "MTGSDKNewInterstitial",
                      url:"https://github.com/MTGSDK/MintegralAdSDK-Swift-Package-Beta/releases/download/7.1.0/MTGSDKNewInterstitial.xcframework.zip",
                      checksum: "37dc3e04c8a4c89e21feadf2ae9a5824500cf51c5f1ae9ddd2123fd640238355"),
        .binaryTarget(name: "MTGSDKInterstitialVideo",
                      url:"https://github.com/MTGSDK/MintegralAdSDK-Swift-Package-Beta/releases/download/7.1.0/MTGSDKInterstitialVideo.xcframework.zip",
                      checksum: "df26d3f311feffc39d9ee76087c6abe1c030ed56fbb042183c5f2a82ea78645a"),
        .binaryTarget(name: "MTGSDKReward",
                      url:"https://github.com/MTGSDK/MintegralAdSDK-Swift-Package-Beta/releases/download/7.1.0/MTGSDKReward.xcframework.zip",
                      checksum: "4e6ad573178470df179ffe2b664235162b9f4c87192cdd642ec54f56375004eb"),
        .binaryTarget(name: "MTGSDKSplash",
                      url:"https://github.com/MTGSDK/MintegralAdSDK-Swift-Package-Beta/releases/download/7.1.0/MTGSDKSplash.xcframework.zip",
                      checksum: "73abf5e6304160d5719295c21331eba62ca779dd2df42d345cc03920eda3cbb5"),
        .binaryTarget(name: "MTGSDKNativeAdvanced",
                      url:"https://github.com/MTGSDK/MintegralAdSDK-Swift-Package-Beta/releases/download/7.1.0/MTGSDKNativeAdvanced.xcframework.zip",
                      checksum: "7f1a643673ffed47c7c155b1aa479a25e1dbcd733bf320a47423011ef3f3d731"),
      
        
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