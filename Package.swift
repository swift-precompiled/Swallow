// swift-tools-version:6.1.0

import PackageDescription
import Foundation
import CompilerPluginSupport

let package = Package(
    name: "source",
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
            revision: "1.3.1"
        ),
        .package(
            url: "https://github.com/swift-precompiled/swift-collections",
            revision: "1.6.0"
        ),
        .package(
            url: "https://github.com/swift-precompiled/swift-syntax.git",
            revision: "601.0.1-1497f48"
        )
    ],
    targets: [
        .target(
            name: "_SwiftRuntimeExports_Aggregation",
            dependencies: ["_SwiftRuntimeExports"]
        ),
        .binaryTarget(
            name: "_SwiftRuntimeExports",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3/_SwiftRuntimeExports-06b658f8c85000a7fec6eb6e3908b8c9ea4b17c1b61b065d38e8d8444578367f.xcframework.zip",
            checksum: "06b658f8c85000a7fec6eb6e3908b8c9ea4b17c1b61b065d38e8d8444578367f"
        ),
        .target(
            name: "_PythonString_Aggregation",
            dependencies: ["_PythonString"]
        ),
        .binaryTarget(
            name: "_PythonString",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3/_PythonString-9a9c575668677d31216019e80807a2fe920aee4fc5c7afdaeec52cd8a4a307b1.xcframework.zip",
            checksum: "9a9c575668677d31216019e80807a2fe920aee4fc5c7afdaeec52cd8a4a307b1"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3/_SwallowSwiftOverlay-d27c7f75bb20403959fcc2664b2cd3b7121d2e09344f37f1a9f6e3138df2516f.xcframework.zip",
            checksum: "d27c7f75bb20403959fcc2664b2cd3b7121d2e09344f37f1a9f6e3138df2516f"
        ),
        .target(
            name: "LoremIpsum_Aggregation",
            dependencies: ["LoremIpsum"]
        ),
        .binaryTarget(
            name: "LoremIpsum",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3/LoremIpsum-dbda1b5f8a007bef3bb71a81643726a6c9dbcc2f8764b6cade78f7efb21136be.xcframework.zip",
            checksum: "dbda1b5f8a007bef3bb71a81643726a6c9dbcc2f8764b6cade78f7efb21136be"
        ),
        .target(
            name: "SE0270_RangeSet_Aggregation",
            dependencies: ["SE0270_RangeSet"]
        ),
        .binaryTarget(
            name: "SE0270_RangeSet",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3/SE0270_RangeSet-753d33085a4a7cfd31af174b183083129522f4207dadc852fa36efd2936339a0.xcframework.zip",
            checksum: "753d33085a4a7cfd31af174b183083129522f4207dadc852fa36efd2936339a0"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3/Swallow-037f7227ca6fa2d85c81ffddb1041dbc9edb87b05bf0e490bd199bff6a6cbe37.xcframework.zip",
            checksum: "037f7227ca6fa2d85c81ffddb1041dbc9edb87b05bf0e490bd199bff6a6cbe37"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3/Compute-fad46dbb2cfcc5a25a1804a96d76cb209174b98827786c172211c5759586a74b.xcframework.zip",
            checksum: "fad46dbb2cfcc5a25a1804a96d76cb209174b98827786c172211c5759586a74b"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3/CoreModel-f5c9da7be1cf87e28afacd357fad01e028a785f988473ca98e46bd2cae70190d.xcframework.zip",
            checksum: "f5c9da7be1cf87e28afacd357fad01e028a785f988473ca98e46bd2cae70190d"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3/ErrorX-e9abb93d4dc8a5e4a73fcd21d54d306aa50398d75c1ce9d35f1c2b1fa728006a.xcframework.zip",
            checksum: "e9abb93d4dc8a5e4a73fcd21d54d306aa50398d75c1ce9d35f1c2b1fa728006a"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3/Diagnostics-291da386e82d0637e0373d33bce93be9c8b21b484434a4d3d8af7c00c29968aa.xcframework.zip",
            checksum: "291da386e82d0637e0373d33bce93be9c8b21b484434a4d3d8af7c00c29968aa"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3/FoundationX-4422bd21779e76a54400a7fb8a3302f4f8e6c81048887b3f4df48907348f43d6.xcframework.zip",
            checksum: "4422bd21779e76a54400a7fb8a3302f4f8e6c81048887b3f4df48907348f43d6"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3/POSIX-b46e40a520a1c3fecac4b95a54a4ff2d257435f459ba70ca4d06a21770aa6fa1.xcframework.zip",
            checksum: "b46e40a520a1c3fecac4b95a54a4ff2d257435f459ba70ca4d06a21770aa6fa1"
        ),
        .target(
            name: "_RuntimeC_Aggregation",
            dependencies: ["_RuntimeC"]
        ),
        .binaryTarget(
            name: "_RuntimeC",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3/_RuntimeC-e1b3b1231f35eaeeca29091a0b6380f78319541bae29b83b2d6eac3b4980dc72.xcframework.zip",
            checksum: "e1b3b1231f35eaeeca29091a0b6380f78319541bae29b83b2d6eac3b4980dc72"
        ),
        .target(
            name: "_RuntimeKeyPath_Aggregation",
            dependencies: ["_RuntimeKeyPath", "Swallow_Aggregation"]
        ),
        .binaryTarget(
            name: "_RuntimeKeyPath",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3/_RuntimeKeyPath-cb13aad138387ed248864cd36ffa12c12f9394ea4dab86dc9a445980e9170c13.xcframework.zip",
            checksum: "cb13aad138387ed248864cd36ffa12c12f9394ea4dab86dc9a445980e9170c13"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3/Runtime-1d669083463103853dc75c829264f774dbdae0ec7df6adfd020e89a1c3895654.xcframework.zip",
            checksum: "1d669083463103853dc75c829264f774dbdae0ec7df6adfd020e89a1c3895654"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3/SwallowMacrosClient-33d0d97e37b599e716b37e05870787a1bc466808bf6a9f23c06a3c38542b3a5e.xcframework.zip",
            checksum: "33d0d97e37b599e716b37e05870787a1bc466808bf6a9f23c06a3c38542b3a5e"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3/MacroBuilder-c4d377229cb0c07617f8228f91f47e47af98d2c83dcf3940170f485e9750a7f4.xcframework.zip",
            checksum: "c4d377229cb0c07617f8228f91f47e47af98d2c83dcf3940170f485e9750a7f4"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3/SwiftSyntaxUtilities-3d6b54aecaeaa32da4c58972428d0351c663c23949c6459bfc8067f89ba91671.xcframework.zip",
            checksum: "3d6b54aecaeaa32da4c58972428d0351c663c23949c6459bfc8067f89ba91671"
        )
    ]
)