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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/_SwiftRuntimeExports-760dac7f3823d774ea95955539394bf85f4cade35f2fd1e9b01b9e4f8fad8f00.xcframework.zip",
            checksum: "760dac7f3823d774ea95955539394bf85f4cade35f2fd1e9b01b9e4f8fad8f00"
        ),
        .target(
            name: "_PythonString_Aggregation",
            dependencies: ["_PythonString"]
        ),
        .binaryTarget(
            name: "_PythonString",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/_PythonString-a2b63e3afca327fb8b095cee1008c9595756fcd8d0232ffec052d82ba3aa898f.xcframework.zip",
            checksum: "a2b63e3afca327fb8b095cee1008c9595756fcd8d0232ffec052d82ba3aa898f"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/_SwallowSwiftOverlay-a247e6c2fa81858de864768cc233b1c926070e19f44c1999e4cf3cbb0e7f9790.xcframework.zip",
            checksum: "a247e6c2fa81858de864768cc233b1c926070e19f44c1999e4cf3cbb0e7f9790"
        ),
        .target(
            name: "LoremIpsum_Aggregation",
            dependencies: ["LoremIpsum"]
        ),
        .binaryTarget(
            name: "LoremIpsum",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/LoremIpsum-889633c389b95e492dea4838880e39ae088f172cf1216a71a0ab8ed615ac07c3.xcframework.zip",
            checksum: "889633c389b95e492dea4838880e39ae088f172cf1216a71a0ab8ed615ac07c3"
        ),
        .target(
            name: "SE0270_RangeSet_Aggregation",
            dependencies: ["SE0270_RangeSet"]
        ),
        .binaryTarget(
            name: "SE0270_RangeSet",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/SE0270_RangeSet-eedb1e32335b9c7bb2ba1c6126e0724b42dfa70b040b3a3b7f0a83acd948b00d.xcframework.zip",
            checksum: "eedb1e32335b9c7bb2ba1c6126e0724b42dfa70b040b3a3b7f0a83acd948b00d"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/Swallow-c2433ca340fc4438241a1d64d94a218973ad1f372c40ab1e4b0feb9a99859426.xcframework.zip",
            checksum: "c2433ca340fc4438241a1d64d94a218973ad1f372c40ab1e4b0feb9a99859426"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/Compute-aad7513d1560fb799793af913a9fa603d4830c77671a69d6213d2a3fcdb36d04.xcframework.zip",
            checksum: "aad7513d1560fb799793af913a9fa603d4830c77671a69d6213d2a3fcdb36d04"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/CoreModel-9d127aff97198faf68a65061c38f0be394980b0ed9a0861593b00efbec79d9bb.xcframework.zip",
            checksum: "9d127aff97198faf68a65061c38f0be394980b0ed9a0861593b00efbec79d9bb"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/ErrorX-cb5d83ba296766fcfa9aafcf8307b5031d6cdfb88c2427597e065edca7017089.xcframework.zip",
            checksum: "cb5d83ba296766fcfa9aafcf8307b5031d6cdfb88c2427597e065edca7017089"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/Diagnostics-a0720cf7b0ac9784ffd4a3e2be192a8af9d4fde1c9b18b6a8b7276d66eb2c53a.xcframework.zip",
            checksum: "a0720cf7b0ac9784ffd4a3e2be192a8af9d4fde1c9b18b6a8b7276d66eb2c53a"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/FoundationX-c8137032326dd0d9b3dc7a41087d04ff79bad08c6bc92a1fd485c6cea1958bb5.xcframework.zip",
            checksum: "c8137032326dd0d9b3dc7a41087d04ff79bad08c6bc92a1fd485c6cea1958bb5"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/POSIX-1066fe261a583f95c112d494fb66a4e0b5c8937b774223cc6f980352ce14aea6.xcframework.zip",
            checksum: "1066fe261a583f95c112d494fb66a4e0b5c8937b774223cc6f980352ce14aea6"
        ),
        .target(
            name: "_RuntimeC_Aggregation",
            dependencies: ["_RuntimeC"]
        ),
        .binaryTarget(
            name: "_RuntimeC",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/_RuntimeC-e60a27039fed89fbdae7505f3a5eb64c9c74f687fc2cd87e9d0ed41e09197ed5.xcframework.zip",
            checksum: "e60a27039fed89fbdae7505f3a5eb64c9c74f687fc2cd87e9d0ed41e09197ed5"
        ),
        .target(
            name: "_RuntimeKeyPath_Aggregation",
            dependencies: ["_RuntimeKeyPath", "Swallow_Aggregation"]
        ),
        .binaryTarget(
            name: "_RuntimeKeyPath",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/_RuntimeKeyPath-f3b81d25c445156bde1f24f54292ddace49fc4db4e99e2c29b7610901587a47b.xcframework.zip",
            checksum: "f3b81d25c445156bde1f24f54292ddace49fc4db4e99e2c29b7610901587a47b"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/Runtime-2fa51d447d60bb095ed807d89f4a326a416c435873cf458f34780b92ae2747a6.xcframework.zip",
            checksum: "2fa51d447d60bb095ed807d89f4a326a416c435873cf458f34780b92ae2747a6"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/SwallowMacrosClient-b52758efb0f0e75558f29ba747c6eb88c801087446a296d93c57c4fcae0b9c72.xcframework.zip",
            checksum: "b52758efb0f0e75558f29ba747c6eb88c801087446a296d93c57c4fcae0b9c72"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/MacroBuilder-eb9d362b91aebc4e1a8d9bb625896c7ea8828437cd4500b8baf5e7c08c831c00.xcframework.zip",
            checksum: "eb9d362b91aebc4e1a8d9bb625896c7ea8828437cd4500b8baf5e7c08c831c00"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/SwiftSyntaxUtilities-431dcecf880574ccc6301e01f717002ed8a9fc1fc796c0bbf3ab37e79b180ce0.xcframework.zip",
            checksum: "431dcecf880574ccc6301e01f717002ed8a9fc1fc796c0bbf3ab37e79b180ce0"
        )
    ]
)