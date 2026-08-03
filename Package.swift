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
            revision: "1.3.1-precompiled.2"
        ),
        .package(
            url: "https://github.com/swift-precompiled/swift-collections",
            revision: "1.6.0-precompiled.2"
        ),
        .package(
            url: "https://github.com/swift-precompiled/swift-syntax.git",
            revision: "601.0.1-precompiled.3"
        )
    ],
    targets: [
        .target(
            name: "_SwiftRuntimeExports_Aggregation",
            dependencies: ["_SwiftRuntimeExports"]
        ),
        .binaryTarget(
            name: "_SwiftRuntimeExports",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.2/_SwiftRuntimeExports-7021f051a75dde2ab3d989d805ffd8067e515122151cd0e5de4a4c6fc028e127.xcframework.zip",
            checksum: "7021f051a75dde2ab3d989d805ffd8067e515122151cd0e5de4a4c6fc028e127"
        ),
        .target(
            name: "_PythonString_Aggregation",
            dependencies: ["_PythonString"]
        ),
        .binaryTarget(
            name: "_PythonString",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.2/_PythonString-ec4aa13cb0267d7508df5d2abda87ca761d351e53ea36eb8242eda53fb31848e.xcframework.zip",
            checksum: "ec4aa13cb0267d7508df5d2abda87ca761d351e53ea36eb8242eda53fb31848e"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.2/_SwallowSwiftOverlay-a6b3a69ce67b0497b3f827364782935e11a5b409f546d590e5c3434a4296d441.xcframework.zip",
            checksum: "a6b3a69ce67b0497b3f827364782935e11a5b409f546d590e5c3434a4296d441"
        ),
        .target(
            name: "LoremIpsum_Aggregation",
            dependencies: ["LoremIpsum"]
        ),
        .binaryTarget(
            name: "LoremIpsum",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.2/LoremIpsum-8729d3163228d6d0368be601aa66aeec5cadd2ac7ff6a3b470ff431145cd057c.xcframework.zip",
            checksum: "8729d3163228d6d0368be601aa66aeec5cadd2ac7ff6a3b470ff431145cd057c"
        ),
        .target(
            name: "SE0270_RangeSet_Aggregation",
            dependencies: ["SE0270_RangeSet"]
        ),
        .binaryTarget(
            name: "SE0270_RangeSet",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.2/SE0270_RangeSet-b4a85322cc9d44612c479616a94bf04e4b1d978dcac7e1400058b1783f996c4b.xcframework.zip",
            checksum: "b4a85322cc9d44612c479616a94bf04e4b1d978dcac7e1400058b1783f996c4b"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.2/Swallow-dddfd22d00011a316f12843342ceb6671d2de882f9b5c2ff196a57fa3e76f02e.xcframework.zip",
            checksum: "dddfd22d00011a316f12843342ceb6671d2de882f9b5c2ff196a57fa3e76f02e"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.2/Compute-38a257e23e31c140eeb55c281076de8bb1f4f305a0444731e339b63718eea251.xcframework.zip",
            checksum: "38a257e23e31c140eeb55c281076de8bb1f4f305a0444731e339b63718eea251"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.2/CoreModel-0cc5f2b5e548d01530c537592cae60011913b561b324f088e0ecbf9f0532321f.xcframework.zip",
            checksum: "0cc5f2b5e548d01530c537592cae60011913b561b324f088e0ecbf9f0532321f"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.2/ErrorX-73c6158363245ed6518e937c1303bafeb40e4da2b9aa423577d5d826442aca2c.xcframework.zip",
            checksum: "73c6158363245ed6518e937c1303bafeb40e4da2b9aa423577d5d826442aca2c"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.2/Diagnostics-2bfbe81380901daca6da8fd1ed56d84c5cf54ce9d6815e5a83af8e5882909bc3.xcframework.zip",
            checksum: "2bfbe81380901daca6da8fd1ed56d84c5cf54ce9d6815e5a83af8e5882909bc3"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.2/FoundationX-c2ef5877dd3bd17104364fc5416a16b95a80bc261ea60822e67e4959b02d862a.xcframework.zip",
            checksum: "c2ef5877dd3bd17104364fc5416a16b95a80bc261ea60822e67e4959b02d862a"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.2/POSIX-6e182dd384dec379951d2504806c0bdc5e18a4c5fea3f13b1dd4f1912ced67e6.xcframework.zip",
            checksum: "6e182dd384dec379951d2504806c0bdc5e18a4c5fea3f13b1dd4f1912ced67e6"
        ),
        .target(
            name: "_RuntimeC_Aggregation",
            dependencies: ["_RuntimeC"]
        ),
        .binaryTarget(
            name: "_RuntimeC",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.2/_RuntimeC-a0ea4a623821d0b7c716cc06feaac90f3347a3c66eee7fb89b9a520bba521147.xcframework.zip",
            checksum: "a0ea4a623821d0b7c716cc06feaac90f3347a3c66eee7fb89b9a520bba521147"
        ),
        .target(
            name: "_RuntimeKeyPath_Aggregation",
            dependencies: ["_RuntimeKeyPath", "Swallow_Aggregation"]
        ),
        .binaryTarget(
            name: "_RuntimeKeyPath",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.2/_RuntimeKeyPath-ddf4f0a98064ca87e3c08f2e4f7f98f260435f5c24f311f7eecc288aeaf07fb9.xcframework.zip",
            checksum: "ddf4f0a98064ca87e3c08f2e4f7f98f260435f5c24f311f7eecc288aeaf07fb9"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.2/Runtime-4a2b91d01e0f8a93563174567c19a813a7fa4182ca3aea4aeb1f8b47d5aa3e80.xcframework.zip",
            checksum: "4a2b91d01e0f8a93563174567c19a813a7fa4182ca3aea4aeb1f8b47d5aa3e80"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.2/SwallowMacrosClient-1e6772c7f12bdbcd8e33750d3b54d3a80bc1f541050bc13250ad05e647af5e96.xcframework.zip",
            checksum: "1e6772c7f12bdbcd8e33750d3b54d3a80bc1f541050bc13250ad05e647af5e96"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.2/MacroBuilder-6f80e6a4f5b35e69894c4485a5b1bdaf74a354e5019ecbe59cb1e5847d8ee9a7.xcframework.zip",
            checksum: "6f80e6a4f5b35e69894c4485a5b1bdaf74a354e5019ecbe59cb1e5847d8ee9a7"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.2/SwiftSyntaxUtilities-ed3e34a58c70464dd76920986ef81603a031854eb6aec3cdb0f1a754d0d78957.xcframework.zip",
            checksum: "ed3e34a58c70464dd76920986ef81603a031854eb6aec3cdb0f1a754d0d78957"
        )
    ]
)