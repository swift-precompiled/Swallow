// swift-tools-version:6.1.0

import PackageDescription
import Foundation
import CompilerPluginSupport

let package = Package(
    name: "Swallow",
    platforms: [
        .iOS("13.0"),
        .macOS("11.0"),
        .tvOS("13.0"),
        .watchOS("6.0")
    ],
    products: [
        .library(
            name: "Swallow",
            targets: [
                "_PythonString_Aggregation",
                "_RuntimeC_Aggregation",
                "_RuntimeKeyPath_Aggregation",
                "_SwallowSwiftOverlay_Aggregation",
                "_SwiftRuntimeExports_Aggregation",
                "SE0270_RangeSet_Aggregation",
                "Swallow_Aggregation",
                "Compute_Aggregation",
                "CoreModel_Aggregation",
                "Diagnostics_Aggregation",
                "ErrorX_Aggregation",
                "FoundationX_Aggregation",
                "LoremIpsum_Aggregation",
                "POSIX_Aggregation",
                "Runtime_Aggregation"
            ]
        ),
        .library(
            name: "SwallowMacrosClient",
            targets: ["SwallowMacrosClient_Aggregation"]
        ),
        .library(
            name: "ErrorX",
            targets: ["ErrorX_Aggregation"]
        ),
        .library(
            name: "MacroBuilder",
            targets: ["MacroBuilder_Aggregation"]
        ),
        .library(
            name: "SwiftSyntaxUtilities",
            targets: ["SwiftSyntaxUtilities_Aggregation"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/swift-precompiled/swift-atomics",
            exact: "1.3.1"
        ),
        .package(
            url: "https://github.com/swift-precompiled/swift-collections",
            exact: "1.6.0"
        ),
        .package(
            url: "https://github.com/swift-precompiled/swift-syntax.git",
            exact: "603.0.2"
        )
    ],
    targets: [
        .target(
            name: "_SwiftRuntimeExports_Aggregation",
            dependencies: ["_SwiftRuntimeExports"]
        ),
        .binaryTarget(
            name: "_SwiftRuntimeExports",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/_SwiftRuntimeExports-22e86595e07376a53a49e92c2cd9cb09b85c34759f33d830cf92d92ebf9acd59.xcframework.zip",
            checksum: "22e86595e07376a53a49e92c2cd9cb09b85c34759f33d830cf92d92ebf9acd59"
        ),
        .target(
            name: "_PythonString_Aggregation",
            dependencies: ["_PythonString"]
        ),
        .binaryTarget(
            name: "_PythonString",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/_PythonString-ede457771bb0006d5d291c878c3fce06779312466e6c5705b94c615aceca8e1a.xcframework.zip",
            checksum: "ede457771bb0006d5d291c878c3fce06779312466e6c5705b94c615aceca8e1a"
        ),
        .target(
            name: "_SwallowSwiftOverlay_Aggregation",
            dependencies: [
                "_SwallowSwiftOverlay",
                .product(
                    name: "Collections",
                    package: "swift-collections"
                ),
                .product(
                    name: "OrderedCollections",
                    package: "swift-collections"
                )
            ]
        ),
        .binaryTarget(
            name: "_SwallowSwiftOverlay",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/_SwallowSwiftOverlay-01ed25e39d5fc0931a98295741430efc09e410498d1daccdf402c1b25528cf0f.xcframework.zip",
            checksum: "01ed25e39d5fc0931a98295741430efc09e410498d1daccdf402c1b25528cf0f"
        ),
        .target(
            name: "LoremIpsum_Aggregation",
            dependencies: ["LoremIpsum"]
        ),
        .binaryTarget(
            name: "LoremIpsum",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/LoremIpsum-cd5e97cf6f73f0b60d689b5d37a8f83439daeda568c7b3644f95a55225437e19.xcframework.zip",
            checksum: "cd5e97cf6f73f0b60d689b5d37a8f83439daeda568c7b3644f95a55225437e19"
        ),
        .target(
            name: "SE0270_RangeSet_Aggregation",
            dependencies: ["SE0270_RangeSet"]
        ),
        .binaryTarget(
            name: "SE0270_RangeSet",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/SE0270_RangeSet-27dd8cb593b08b991b7551b57ca6fc22b495c625350ae5414d7a1cbde471e6c0.xcframework.zip",
            checksum: "27dd8cb593b08b991b7551b57ca6fc22b495c625350ae5414d7a1cbde471e6c0"
        ),
        .target(
            name: "Swallow_Aggregation",
            dependencies: [
                "Swallow",
                .product(
                    name: "Collections",
                    package: "swift-collections"
                ),
                .product(
                    name: "OrderedCollections",
                    package: "swift-collections"
                ),
                "_RuntimeC_Aggregation",
                "_SwallowSwiftOverlay_Aggregation",
                "_SwiftRuntimeExports_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "Swallow",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/Swallow-230edeb64a3ee4555cd5e149126b9f4e0991bbd37134e6de2ff6a14200936e99.xcframework.zip",
            checksum: "230edeb64a3ee4555cd5e149126b9f4e0991bbd37134e6de2ff6a14200936e99"
        ),
        .target(
            name: "Compute_Aggregation",
            dependencies: [
                "Compute",
                "Diagnostics_Aggregation",
                .product(
                    name: "Collections",
                    package: "swift-collections"
                ),
                "Swallow_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "Compute",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/Compute-55e124d0aa797a08b634475b1ddb31eb31b905e7a77e5474ba92022139daeb37.xcframework.zip",
            checksum: "55e124d0aa797a08b634475b1ddb31eb31b905e7a77e5474ba92022139daeb37"
        ),
        .target(
            name: "CoreModel_Aggregation",
            dependencies: [
                "CoreModel",
                "Diagnostics_Aggregation",
                .product(
                    name: "Collections",
                    package: "swift-collections"
                ),
                "Swallow_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "CoreModel",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/CoreModel-8ec1741d60c5cafa00cbb2ae6500f509b498b4895c95b5f2be1ed6a4782baef1.xcframework.zip",
            checksum: "8ec1741d60c5cafa00cbb2ae6500f509b498b4895c95b5f2be1ed6a4782baef1"
        ),
        .target(
            name: "ErrorX_Aggregation",
            dependencies: [
                "ErrorX",
                "ErrorXMacros",
                "Swallow_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "ErrorX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/ErrorX-fc0ce8096888506a927eb4f8c38fbb59dacf470b4130110ea900dbaf9822160c.xcframework.zip",
            checksum: "fc0ce8096888506a927eb4f8c38fbb59dacf470b4130110ea900dbaf9822160c"
        ),
        .macro(
            name: "ErrorXMacros",
            path: "Macros/ErrorXMacros"
        ),
        .target(
            name: "Diagnostics_Aggregation",
            dependencies: [
                "Diagnostics",
                "ErrorX_Aggregation",
                "Swallow_Aggregation",
                "SwallowMacrosClient_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "Diagnostics",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/Diagnostics-f450ac2516a45ddecc29ee502a1036f2e863b0bb7517c8f2b1aea0d9dc833601.xcframework.zip",
            checksum: "f450ac2516a45ddecc29ee502a1036f2e863b0bb7517c8f2b1aea0d9dc833601"
        ),
        .target(
            name: "FoundationX_Aggregation",
            dependencies: [
                "FoundationX",
                "Diagnostics_Aggregation",
                "Swallow_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "FoundationX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/FoundationX-3250b28486ea8f817b714f39db0a301ce2bc1eeed034ac2eb702a5a29ffd45e6.xcframework.zip",
            checksum: "3250b28486ea8f817b714f39db0a301ce2bc1eeed034ac2eb702a5a29ffd45e6"
        ),
        .target(
            name: "POSIX_Aggregation",
            dependencies: [
                "POSIX",
                "Swallow_Aggregation",
                "SwallowMacrosClient_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "POSIX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/POSIX-e2e92530e430e6d9d2bae8e36e7c7e9f4b72d0881de475d3717b942011af5185.xcframework.zip",
            checksum: "e2e92530e430e6d9d2bae8e36e7c7e9f4b72d0881de475d3717b942011af5185"
        ),
        .target(
            name: "_RuntimeC_Aggregation",
            dependencies: ["_RuntimeC"]
        ),
        .binaryTarget(
            name: "_RuntimeC",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/_RuntimeC-5909f2e3569d7101eb83d17ab021bf3466d5faea19f76c394e67a96c943b6b69.xcframework.zip",
            checksum: "5909f2e3569d7101eb83d17ab021bf3466d5faea19f76c394e67a96c943b6b69"
        ),
        .target(
            name: "_RuntimeKeyPath_Aggregation",
            dependencies: ["_RuntimeKeyPath", "Swallow_Aggregation"]
        ),
        .binaryTarget(
            name: "_RuntimeKeyPath",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/_RuntimeKeyPath-1fdddbbe72f14faa1b7bd10094ddc6d0fab6297ec11c49c2c683160bae7fe186.xcframework.zip",
            checksum: "1fdddbbe72f14faa1b7bd10094ddc6d0fab6297ec11c49c2c683160bae7fe186"
        ),
        .target(
            name: "Runtime_Aggregation",
            dependencies: [
                "Runtime",
                .product(
                    name: "Atomics",
                    package: "swift-atomics"
                ),
                "_RuntimeC_Aggregation",
                "_RuntimeKeyPath_Aggregation",
                "Compute_Aggregation",
                "FoundationX_Aggregation",
                "Swallow_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "Runtime",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/Runtime-487aaa645387145da3ed3504fbe7d0b395bdf8f69717354b4c72bca0ee4d2531.xcframework.zip",
            checksum: "487aaa645387145da3ed3504fbe7d0b395bdf8f69717354b4c72bca0ee4d2531"
        ),
        .macro(
            name: "SwallowMacros",
            path: "Macros/SwallowMacros"
        ),
        .target(
            name: "SwallowMacrosClient_Aggregation",
            dependencies: [
                "SwallowMacrosClient",
                "SwallowMacros",
                "Swallow_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwallowMacrosClient",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/SwallowMacrosClient-ee9f3d6ccd48c622226f30b51303494621620fb35c1a5fcce76cbac6a82cbbbf.xcframework.zip",
            checksum: "ee9f3d6ccd48c622226f30b51303494621620fb35c1a5fcce76cbac6a82cbbbf"
        ),
        .target(
            name: "MacroBuilder_Aggregation",
            dependencies: [
                "MacroBuilder",
                "Swallow_Aggregation",
                .product(
                    name: "SwiftCompilerPlugin",
                    package: "swift-syntax"
                ),
                .product(
                    name: "SwiftSyntax",
                    package: "swift-syntax"
                ),
                .product(
                    name: "SwiftSyntaxBuilder",
                    package: "swift-syntax"
                ),
                .product(
                    name: "SwiftSyntaxMacros",
                    package: "swift-syntax"
                ),
                .product(
                    name: "SwiftParserDiagnostics",
                    package: "swift-syntax"
                ),
                "SwiftSyntaxUtilities_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "MacroBuilder",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/MacroBuilder-33f5bf0d0147c74b14f3b1e6eba710e9c2f9187c1d2c2f18988fefd74314c8e8.xcframework.zip",
            checksum: "33f5bf0d0147c74b14f3b1e6eba710e9c2f9187c1d2c2f18988fefd74314c8e8"
        ),
        .target(
            name: "SwiftSyntaxUtilities_Aggregation",
            dependencies: [
                "SwiftSyntaxUtilities",
                .product(
                    name: "SwiftCompilerPlugin",
                    package: "swift-syntax"
                ),
                .product(
                    name: "SwiftSyntax",
                    package: "swift-syntax"
                ),
                .product(
                    name: "SwiftSyntaxBuilder",
                    package: "swift-syntax"
                ),
                .product(
                    name: "SwiftSyntaxMacros",
                    package: "swift-syntax"
                ),
                .product(
                    name: "SwiftParser",
                    package: "swift-syntax"
                ),
                .product(
                    name: "SwiftParserDiagnostics",
                    package: "swift-syntax"
                ),
                "Swallow_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftSyntaxUtilities",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/SwiftSyntaxUtilities-396dfc3381c826678e6532cf9ffca5896e5f937be60b0a79d34b1b0ac4843dfc.xcframework.zip",
            checksum: "396dfc3381c826678e6532cf9ffca5896e5f937be60b0a79d34b1b0ac4843dfc"
        )
    ]
)