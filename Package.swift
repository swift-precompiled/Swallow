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
            targets: ["Swallow_PrecompiledProduct"]
        ),
        .library(
            name: "SwallowMacrosClient",
            targets: ["SwallowMacrosClient_PrecompiledProduct"]
        ),
        .library(
            name: "ErrorX",
            targets: ["ErrorX_PrecompiledProduct"]
        ),
        .library(
            name: "MacroBuilder",
            targets: ["MacroBuilder_PrecompiledProduct"]
        ),
        .library(
            name: "SwiftSyntaxUtilities",
            targets: ["SwiftSyntaxUtilities_PrecompiledProduct"]
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
            dependencies: ["_SwiftRuntimeExports"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_SwiftRuntimeExports",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/_SwiftRuntimeExports-7cd8c4291ce9b477170d50a938810f884aa85f1bdfdd090be578e2cff0bc8810.xcframework.zip",
            checksum: "7cd8c4291ce9b477170d50a938810f884aa85f1bdfdd090be578e2cff0bc8810"
        ),
        .target(
            name: "_PythonString_Aggregation",
            dependencies: ["_PythonString"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_PythonString",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/_PythonString-9d6cdcd8c43b79a363e903238d4d67ca1cde92137d17e8656242f3770cc325e1.xcframework.zip",
            checksum: "9d6cdcd8c43b79a363e903238d4d67ca1cde92137d17e8656242f3770cc325e1"
        ),
        .target(
            name: "_SwallowSwiftOverlay_Aggregation",
            dependencies: ["_SwallowSwiftOverlay"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_SwallowSwiftOverlay",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/_SwallowSwiftOverlay-8236686601c5bb23ce0e96db51c85729d31b63f8266abe54698cdbfe575895ac.xcframework.zip",
            checksum: "8236686601c5bb23ce0e96db51c85729d31b63f8266abe54698cdbfe575895ac"
        ),
        .target(
            name: "LoremIpsum_Aggregation",
            dependencies: ["LoremIpsum"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "LoremIpsum",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/LoremIpsum-ec8563579cfdbf942618501be40f54457e7abb7972d051bccccfca6e453955de.xcframework.zip",
            checksum: "ec8563579cfdbf942618501be40f54457e7abb7972d051bccccfca6e453955de"
        ),
        .target(
            name: "SE0270_RangeSet_Aggregation",
            dependencies: ["SE0270_RangeSet"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SE0270_RangeSet",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/SE0270_RangeSet-3f2138f7f9c12352bdc44deb78a041dc4700df0a28c0b7e80aac95e24aee59d0.xcframework.zip",
            checksum: "3f2138f7f9c12352bdc44deb78a041dc4700df0a28c0b7e80aac95e24aee59d0"
        ),
        .target(
            name: "Swallow_Aggregation",
            dependencies: ["Swallow"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Swallow",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/Swallow-f761cecd38876dd9ec84277e7bf388c41e7330ca9ca859d4ef0362a1c1f70526.xcframework.zip",
            checksum: "f761cecd38876dd9ec84277e7bf388c41e7330ca9ca859d4ef0362a1c1f70526"
        ),
        .target(
            name: "Compute_Aggregation",
            dependencies: ["Compute"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Compute",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/Compute-c6f99bb64681e04ce65da1bd709248b2723acfade6485870133198ce137ad0bb.xcframework.zip",
            checksum: "c6f99bb64681e04ce65da1bd709248b2723acfade6485870133198ce137ad0bb"
        ),
        .target(
            name: "CoreModel_Aggregation",
            dependencies: ["CoreModel"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "CoreModel",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/CoreModel-04c9c8983b9ee4fe7e25f258691cb2b7d03c62f972755dbc64296bddf69c72d2.xcframework.zip",
            checksum: "04c9c8983b9ee4fe7e25f258691cb2b7d03c62f972755dbc64296bddf69c72d2"
        ),
        .target(
            name: "ErrorX_Aggregation",
            dependencies: ["ErrorX"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "ErrorX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/ErrorX-07b87cd1f87f6e3135f510b14ce2cdf082b855253288f0cc41528ab3a7e87bc1.xcframework.zip",
            checksum: "07b87cd1f87f6e3135f510b14ce2cdf082b855253288f0cc41528ab3a7e87bc1"
        ),
        .macro(
            name: "ErrorXMacros",
            path: "Macros/ErrorXMacros"
        ),
        .target(
            name: "Diagnostics_Aggregation",
            dependencies: ["Diagnostics"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Diagnostics",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/Diagnostics-8e64f49e67e6fefa9930336b1b7cea38bea8d32076d1a21d67f9c5001aff81a1.xcframework.zip",
            checksum: "8e64f49e67e6fefa9930336b1b7cea38bea8d32076d1a21d67f9c5001aff81a1"
        ),
        .target(
            name: "FoundationX_Aggregation",
            dependencies: ["FoundationX"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "FoundationX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/FoundationX-ed504e49b02844477f33c6b1ded693cd856e3129c47df2feb884b52b6eea84cb.xcframework.zip",
            checksum: "ed504e49b02844477f33c6b1ded693cd856e3129c47df2feb884b52b6eea84cb"
        ),
        .target(
            name: "POSIX_Aggregation",
            dependencies: ["POSIX"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "POSIX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/POSIX-45a790897257116092661d45362a66503d5261ef6638df11a511bac0e49857d4.xcframework.zip",
            checksum: "45a790897257116092661d45362a66503d5261ef6638df11a511bac0e49857d4"
        ),
        .target(
            name: "_RuntimeC_Aggregation",
            dependencies: ["_RuntimeC"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_RuntimeC",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/_RuntimeC-3990eb49e2ef0936aad41091fc6a303827f10fbfc3680079205eb3adcad82595.xcframework.zip",
            checksum: "3990eb49e2ef0936aad41091fc6a303827f10fbfc3680079205eb3adcad82595"
        ),
        .target(
            name: "_RuntimeKeyPath_Aggregation",
            dependencies: ["_RuntimeKeyPath"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_RuntimeKeyPath",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/_RuntimeKeyPath-0bd9a04b90c41f8cfd119b239ae7e33fbcef8d5d97f647bedaa5bf8c4f43ed18.xcframework.zip",
            checksum: "0bd9a04b90c41f8cfd119b239ae7e33fbcef8d5d97f647bedaa5bf8c4f43ed18"
        ),
        .target(
            name: "Runtime_Aggregation",
            dependencies: ["Runtime"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Runtime",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/Runtime-9b6604d47c8233c08db659263967a1a1f325b9b5dc9b848263eec5ff0b160793.xcframework.zip",
            checksum: "9b6604d47c8233c08db659263967a1a1f325b9b5dc9b848263eec5ff0b160793"
        ),
        .macro(
            name: "SwallowMacros",
            path: "Macros/SwallowMacros"
        ),
        .target(
            name: "SwallowMacrosClient_Aggregation",
            dependencies: ["SwallowMacrosClient"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwallowMacrosClient",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/SwallowMacrosClient-bedbdb20c77e0c61fd4234d2e600868095ee02fbb60f224932ec91bfc1a9ca05.xcframework.zip",
            checksum: "bedbdb20c77e0c61fd4234d2e600868095ee02fbb60f224932ec91bfc1a9ca05"
        ),
        .target(
            name: "MacroBuilder_Aggregation",
            dependencies: ["MacroBuilder"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "MacroBuilder",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/MacroBuilder-81866a76e748f73d758d1751a92ff3fdbbda8e0bab85f14de3dc11da2b2b7611.xcframework.zip",
            checksum: "81866a76e748f73d758d1751a92ff3fdbbda8e0bab85f14de3dc11da2b2b7611"
        ),
        .target(
            name: "SwiftSyntaxUtilities_Aggregation",
            dependencies: ["SwiftSyntaxUtilities"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntaxUtilities",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/SwiftSyntaxUtilities-8e804f705a68b98991c504853b36ea627c6bedaf47a83106ecf958a14140411e.xcframework.zip",
            checksum: "8e804f705a68b98991c504853b36ea627c6bedaf47a83106ecf958a14140411e"
        ),
        .target(
            name: "Swallow_PrecompiledProduct",
            dependencies: [
                "_PythonString_Aggregation",
                "_RuntimeC_Aggregation",
                "_RuntimeKeyPath_Aggregation",
                "Swallow_Aggregation",
                .product(
                    name: "Collections",
                    package: "swift-collections"
                ),
                .product(
                    name: "OrderedCollections",
                    package: "swift-collections"
                ),
                "_SwallowSwiftOverlay_Aggregation",
                "_SwiftRuntimeExports_Aggregation",
                "SE0270_RangeSet_Aggregation",
                "Compute_Aggregation",
                "Diagnostics_Aggregation",
                "ErrorX_Aggregation",
                "ErrorXMacros",
                "SwallowMacrosClient_Aggregation",
                "SwallowMacros",
                "CoreModel_Aggregation",
                "FoundationX_Aggregation",
                "LoremIpsum_Aggregation",
                "POSIX_Aggregation",
                "Runtime_Aggregation",
                .product(
                    name: "Atomics",
                    package: "swift-atomics"
                )
            ]
        ),
        .target(
            name: "SwallowMacrosClient_PrecompiledProduct",
            dependencies: [
                "SwallowMacrosClient_Aggregation",
                "SwallowMacros",
                "Swallow_Aggregation",
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
        .target(
            name: "ErrorX_PrecompiledProduct",
            dependencies: [
                "ErrorX_Aggregation",
                "ErrorXMacros",
                "Swallow_Aggregation",
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
        .target(
            name: "MacroBuilder_PrecompiledProduct",
            dependencies: [
                "MacroBuilder_Aggregation",
                "Swallow_Aggregation",
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
                "_SwiftRuntimeExports_Aggregation",
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
                "SwiftSyntaxUtilities_Aggregation",
                .product(
                    name: "SwiftParser",
                    package: "swift-syntax"
                )
            ]
        ),
        .target(
            name: "SwiftSyntaxUtilities_PrecompiledProduct",
            dependencies: [
                "SwiftSyntaxUtilities_Aggregation",
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
                "Swallow_Aggregation",
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
        )
    ]
)