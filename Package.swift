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
                      url:"https://github.com/MTGSDK/MintegralAdSDK-Swift-Package-Beta/releases/download/0.0.7/MTGSDK.xcframework.zip",
                      checksum: "88177f22451fe0639030b28d7e48385901d86ce0e2f3fe0754d05554117b2ddf"),
        .binaryTarget(name: "MTGSDKBanner",
                      url:"https://github.com/MTGSDK/MintegralAdSDK-Swift-Package-Beta/releases/download/0.0.7/MTGSDKBanner.xcframework.zip",
                      checksum: "8485fca6fdaa40373337485efc3cd69e27a675f2d43fcb6205a34b08dc6e6f40"),
        .binaryTarget(name: "MTGSDKBidding",
                      url:"https://github.com/MTGSDK/MintegralAdSDK-Swift-Package-Beta/releases/download/0.0.7/MTGSDKBidding.xcframework.zip",
                      checksum: "92013a8e4f30613b10e4a0df68760664cfd42677ec9283e271b1a75ab3142a28"),
        .binaryTarget(name: "MTGSDKNewInterstitial",
                      url:"https://github.com/MTGSDK/MintegralAdSDK-Swift-Package-Beta/releases/download/0.0.7/MTGSDKNewInterstitial.xcframework.zip",
                      checksum: "052d403599f518c2e5a75d8780beff07d72eed878ae3d086549130b83f98f970"),
        .binaryTarget(name: "MTGSDKInterstitialVideo",
                      url:"https://github.com/MTGSDK/MintegralAdSDK-Swift-Package-Beta/releases/download/0.0.7/MTGSDKInterstitialVideo.xcframework.zip",
                      checksum: "eb6a62bac23813aea2f6baef765b527095a0fb39525fb61df070b7ba4fd35906"),
        .binaryTarget(name: "MTGSDKReward",
                      url:"https://github.com/MTGSDK/MintegralAdSDK-Swift-Package-Beta/releases/download/0.0.7/MTGSDKReward.xcframework.zip",
                      checksum: "53a02e55e1ed1856857dcff4b64cdffa7e5f8a8de78da7e4f7de83ace37cc607"),
        .binaryTarget(name: "MTGSDKSplash",
                      url:"https://github.com/MTGSDK/MintegralAdSDK-Swift-Package-Beta/releases/download/0.0.7/MTGSDKSplash.xcframework.zip",
                      checksum: "b42f0480a56223e488f3165bb0e1ceda7337ff4ba1c2d5be7bfd361d7572d551"),
        .binaryTarget(name: "MTGSDKNativeAdvanced",
                      url:"https://github.com/MTGSDK/MintegralAdSDK-Swift-Package-Beta/releases/download/0.0.7/MTGSDKNativeAdvanced.xcframework.zip",
                      checksum: "7fe4fa6c9cac3933f7affa1fd760383cdbdc5e0f65cdbb17c0b2ac1d93bbf19d"),
      
        
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