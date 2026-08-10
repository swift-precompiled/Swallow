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
            url: "https://github.com/swift-precompiled/swift-syntax",
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/_SwiftRuntimeExports-485a909b071fda0b4dde5e1080300b8f694349ff36dc7da70ba874f9e438a9ce.xcframework.zip",
            checksum: "485a909b071fda0b4dde5e1080300b8f694349ff36dc7da70ba874f9e438a9ce"
        ),
        .target(
            name: "_PythonString_Aggregation",
            dependencies: ["_PythonString"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_PythonString",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/_PythonString-5e2dd5d811360160383c6aca2113424b0bb8e5434549b349cd4aff7841f31650.xcframework.zip",
            checksum: "5e2dd5d811360160383c6aca2113424b0bb8e5434549b349cd4aff7841f31650"
        ),
        .target(
            name: "_SwallowSwiftOverlay_Aggregation",
            dependencies: ["_SwallowSwiftOverlay"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_SwallowSwiftOverlay",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/_SwallowSwiftOverlay-e7a263ddf3bcc03c90c00f282d38242ad43d8c52e5458a11d486a9d7d015f1dd.xcframework.zip",
            checksum: "e7a263ddf3bcc03c90c00f282d38242ad43d8c52e5458a11d486a9d7d015f1dd"
        ),
        .target(
            name: "LoremIpsum_Aggregation",
            dependencies: ["LoremIpsum"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "LoremIpsum",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/LoremIpsum-663bfcfa2680032c44fedb5d3cd60bde39002579655cc94de89362982557ee95.xcframework.zip",
            checksum: "663bfcfa2680032c44fedb5d3cd60bde39002579655cc94de89362982557ee95"
        ),
        .target(
            name: "SE0270_RangeSet_Aggregation",
            dependencies: ["SE0270_RangeSet"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SE0270_RangeSet",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/SE0270_RangeSet-208b5d16d7eee44e4d1850dedcd45b3b79b0a298bef5c8fc3f9ab14c7187e29e.xcframework.zip",
            checksum: "208b5d16d7eee44e4d1850dedcd45b3b79b0a298bef5c8fc3f9ab14c7187e29e"
        ),
        .target(
            name: "Swallow_Aggregation",
            dependencies: ["Swallow"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Swallow",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/Swallow-541b769c766a13834ffd30bd64d05035256995859592d936b9ddb7e6ecb336a6.xcframework.zip",
            checksum: "541b769c766a13834ffd30bd64d05035256995859592d936b9ddb7e6ecb336a6"
        ),
        .target(
            name: "Compute_Aggregation",
            dependencies: ["Compute"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Compute",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/Compute-198154bd32b7214f290b87b03c43c09eb1cf225a64b33edf0b5c19c2c8ffac72.xcframework.zip",
            checksum: "198154bd32b7214f290b87b03c43c09eb1cf225a64b33edf0b5c19c2c8ffac72"
        ),
        .target(
            name: "CoreModel_Aggregation",
            dependencies: ["CoreModel"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "CoreModel",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/CoreModel-6b9bfcd8595a736caab2f8c64d261ffda62d3224f3702bd7e406ff862e4c7672.xcframework.zip",
            checksum: "6b9bfcd8595a736caab2f8c64d261ffda62d3224f3702bd7e406ff862e4c7672"
        ),
        .target(
            name: "ErrorX_Aggregation",
            dependencies: ["ErrorX"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "ErrorX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/ErrorX-d3a4fc293c452f9aea96044901d8f73b4d22362de4192442ce843a912f50c272.xcframework.zip",
            checksum: "d3a4fc293c452f9aea96044901d8f73b4d22362de4192442ce843a912f50c272"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/Diagnostics-341616ea90fd302c860f12c8003d543f760de71c5f8ea8a3e3914d17d23b38d1.xcframework.zip",
            checksum: "341616ea90fd302c860f12c8003d543f760de71c5f8ea8a3e3914d17d23b38d1"
        ),
        .target(
            name: "FoundationX_Aggregation",
            dependencies: ["FoundationX"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "FoundationX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/FoundationX-89d3b2b7a894d37d1d3d030229d08037ff428d6e5e9d8a1b3fb5254ec7a8bd9e.xcframework.zip",
            checksum: "89d3b2b7a894d37d1d3d030229d08037ff428d6e5e9d8a1b3fb5254ec7a8bd9e"
        ),
        .target(
            name: "POSIX_Aggregation",
            dependencies: ["POSIX"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "POSIX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/POSIX-da69bc6cf216852531d04b3b1e55e411d35d4b4989b4c6f9ca53759a5b2cb50a.xcframework.zip",
            checksum: "da69bc6cf216852531d04b3b1e55e411d35d4b4989b4c6f9ca53759a5b2cb50a"
        ),
        .binaryTarget(
            name: "_RuntimeC",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/_RuntimeC-2f05780a86d3aec2d9b83a9843898c85a7b6a3d545e0ab0f67045fc041f3e300.xcframework.zip",
            checksum: "2f05780a86d3aec2d9b83a9843898c85a7b6a3d545e0ab0f67045fc041f3e300"
        ),
        .target(
            name: "_RuntimeKeyPath_Aggregation",
            dependencies: ["_RuntimeKeyPath"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_RuntimeKeyPath",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/_RuntimeKeyPath-2382d16efa49b845952dbe6b1a081e05c0530cdf0d369702b8d10c18aa9b9baf.xcframework.zip",
            checksum: "2382d16efa49b845952dbe6b1a081e05c0530cdf0d369702b8d10c18aa9b9baf"
        ),
        .target(
            name: "Runtime_Aggregation",
            dependencies: ["Runtime"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Runtime",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/Runtime-1939d5952e5b1560d4b0b45af561b1e4f3815d5f4e1ce68ec1ad003f070de74d.xcframework.zip",
            checksum: "1939d5952e5b1560d4b0b45af561b1e4f3815d5f4e1ce68ec1ad003f070de74d"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/SwallowMacrosClient-f7c22e0fd0fe6c4a2c6c6c96bb35422fd8989321212e56b034eb5b5dc836fbcb.xcframework.zip",
            checksum: "f7c22e0fd0fe6c4a2c6c6c96bb35422fd8989321212e56b034eb5b5dc836fbcb"
        ),
        .target(
            name: "MacroBuilder_Aggregation",
            dependencies: ["MacroBuilder"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "MacroBuilder",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/MacroBuilder-eb542a6a747594664bf240d1a8e6b5bd03f6280cd8faf66589955a060228917f.xcframework.zip",
            checksum: "eb542a6a747594664bf240d1a8e6b5bd03f6280cd8faf66589955a060228917f"
        ),
        .target(
            name: "SwiftSyntaxUtilities_Aggregation",
            dependencies: ["SwiftSyntaxUtilities"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntaxUtilities",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/SwiftSyntaxUtilities-e0a24a9ede59bc0b3e08ee329d11338a2ddc667abc251025e504f9eb3c99e41b.xcframework.zip",
            checksum: "e0a24a9ede59bc0b3e08ee329d11338a2ddc667abc251025e504f9eb3c99e41b"
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