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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/_SwiftRuntimeExports-6eefe751ca9c6dc38e884b1467dc3728cb8faa7d16cde8d0a8faeadbbeeb4357.xcframework.zip",
            checksum: "6eefe751ca9c6dc38e884b1467dc3728cb8faa7d16cde8d0a8faeadbbeeb4357"
        ),
        .target(
            name: "_PythonString_Aggregation",
            dependencies: ["_PythonString"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_PythonString",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/_PythonString-9478c0137a8060ecea58065dbc62327622b920d2e43178c51a55dd148b729062.xcframework.zip",
            checksum: "9478c0137a8060ecea58065dbc62327622b920d2e43178c51a55dd148b729062"
        ),
        .target(
            name: "_SwallowSwiftOverlay_Aggregation",
            dependencies: ["_SwallowSwiftOverlay"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_SwallowSwiftOverlay",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/_SwallowSwiftOverlay-dc47950d3f1a722d00b8b7c923b29f2a32e7716a4b9ba94c09ce5011f43f7ea4.xcframework.zip",
            checksum: "dc47950d3f1a722d00b8b7c923b29f2a32e7716a4b9ba94c09ce5011f43f7ea4"
        ),
        .target(
            name: "LoremIpsum_Aggregation",
            dependencies: ["LoremIpsum"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "LoremIpsum",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/LoremIpsum-66608a4520d8bbc34d14c1e1b6242619a208b2742e0fcb02088ff2a359ae1233.xcframework.zip",
            checksum: "66608a4520d8bbc34d14c1e1b6242619a208b2742e0fcb02088ff2a359ae1233"
        ),
        .target(
            name: "SE0270_RangeSet_Aggregation",
            dependencies: ["SE0270_RangeSet"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SE0270_RangeSet",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/SE0270_RangeSet-bd33810e9820ba31f5df7cebb7963542fc9afa818a7f794243c7f3d5502cc661.xcframework.zip",
            checksum: "bd33810e9820ba31f5df7cebb7963542fc9afa818a7f794243c7f3d5502cc661"
        ),
        .target(
            name: "Swallow_Aggregation",
            dependencies: ["Swallow"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Swallow",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/Swallow-d13b0da4eb7132da4c2a4d62bdde4b90e0238d5b9cf88472c16239c8e846afa5.xcframework.zip",
            checksum: "d13b0da4eb7132da4c2a4d62bdde4b90e0238d5b9cf88472c16239c8e846afa5"
        ),
        .target(
            name: "Compute_Aggregation",
            dependencies: ["Compute"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Compute",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/Compute-14e5eedd8821625fd0afd71e10d92eacfb20e0fe30f2531e43be6ec15e788253.xcframework.zip",
            checksum: "14e5eedd8821625fd0afd71e10d92eacfb20e0fe30f2531e43be6ec15e788253"
        ),
        .target(
            name: "CoreModel_Aggregation",
            dependencies: ["CoreModel"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "CoreModel",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/CoreModel-2164b834fd3bc56877fbc405da2f5489b20e00d2bfe553aecc0d1b4a3cc04a6b.xcframework.zip",
            checksum: "2164b834fd3bc56877fbc405da2f5489b20e00d2bfe553aecc0d1b4a3cc04a6b"
        ),
        .target(
            name: "ErrorX_Aggregation",
            dependencies: ["ErrorX"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "ErrorX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/ErrorX-2785da3600642c6155c00f191275e3095d3dd8065cc49105763c94547e1799e5.xcframework.zip",
            checksum: "2785da3600642c6155c00f191275e3095d3dd8065cc49105763c94547e1799e5"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/Diagnostics-0d4df95c1b8ab0a7237496ac58c120531d9d82e4956a8f90fe5221456bfac454.xcframework.zip",
            checksum: "0d4df95c1b8ab0a7237496ac58c120531d9d82e4956a8f90fe5221456bfac454"
        ),
        .target(
            name: "FoundationX_Aggregation",
            dependencies: ["FoundationX"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "FoundationX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/FoundationX-a4f1fcb250ebf50f074daad93ae914c6895eb3d95c9c9d9cf63e35e6b0a8bf7c.xcframework.zip",
            checksum: "a4f1fcb250ebf50f074daad93ae914c6895eb3d95c9c9d9cf63e35e6b0a8bf7c"
        ),
        .target(
            name: "POSIX_Aggregation",
            dependencies: ["POSIX"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "POSIX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/POSIX-5beaa6ba59cbc92cfa2acd6bbeea57b80e2415d0e5086881454ed13794cd4e7a.xcframework.zip",
            checksum: "5beaa6ba59cbc92cfa2acd6bbeea57b80e2415d0e5086881454ed13794cd4e7a"
        ),
        .target(
            name: "_RuntimeC",
            dependencies: ["_RuntimeC_PrecompiledArchive"],
            path: "Sources/_RuntimeC",
            publicHeadersPath: "include"
        ),
        .binaryTarget(
            name: "_RuntimeC_PrecompiledArchive",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/_RuntimeC-38f7e2cc9fd521ff4d4982e6f987e28962313e72096235205f8476f5778d3de4.xcframework.zip",
            checksum: "38f7e2cc9fd521ff4d4982e6f987e28962313e72096235205f8476f5778d3de4"
        ),
        .target(
            name: "_RuntimeKeyPath_Aggregation",
            dependencies: ["_RuntimeKeyPath"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_RuntimeKeyPath",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/_RuntimeKeyPath-0ba28ad4175897c5bb9839a1199a5af5f77062269868b12053d33c5bbff1bf60.xcframework.zip",
            checksum: "0ba28ad4175897c5bb9839a1199a5af5f77062269868b12053d33c5bbff1bf60"
        ),
        .target(
            name: "Runtime_Aggregation",
            dependencies: ["Runtime"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Runtime",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/Runtime-3035a288093f6ae0fd6c58dba31f9770b4fc3122a9ff2239da93780ff5b2bef6.xcframework.zip",
            checksum: "3035a288093f6ae0fd6c58dba31f9770b4fc3122a9ff2239da93780ff5b2bef6"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/SwallowMacrosClient-21c7e15e8d27a7baffc1dcfc3f1578b89b2637269891f998fb7c7b4d497e1be9.xcframework.zip",
            checksum: "21c7e15e8d27a7baffc1dcfc3f1578b89b2637269891f998fb7c7b4d497e1be9"
        ),
        .target(
            name: "MacroBuilder_Aggregation",
            dependencies: ["MacroBuilder"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "MacroBuilder",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/MacroBuilder-3b666f85ebc44666e6814508aac96f7481f70c7b137c08c3f463341b7e2cfca8.xcframework.zip",
            checksum: "3b666f85ebc44666e6814508aac96f7481f70c7b137c08c3f463341b7e2cfca8"
        ),
        .target(
            name: "SwiftSyntaxUtilities_Aggregation",
            dependencies: ["SwiftSyntaxUtilities"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntaxUtilities",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/SwiftSyntaxUtilities-1bfcf6bab5cce7e9a10e2585b951103600000a4335aa95ce36b6ae729265ec00.xcframework.zip",
            checksum: "1bfcf6bab5cce7e9a10e2585b951103600000a4335aa95ce36b6ae729265ec00"
        ),
        .target(
            name: "Swallow_PrecompiledProduct",
            dependencies: [
                "_PythonString_Aggregation",
                "_RuntimeC",
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
                "_RuntimeC",
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
                "_RuntimeC",
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
                "_RuntimeC",
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
                "_RuntimeC",
                "_SwallowSwiftOverlay_Aggregation",
                "_SwiftRuntimeExports_Aggregation"
            ]
        )
    ]
)