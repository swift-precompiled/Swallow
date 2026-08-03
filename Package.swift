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
            revision: "1.3.1"
        ),
        .package(
            url: "https://github.com/swift-precompiled/swift-collections",
            revision: "1.6.0"
        ),
        .package(
            url: "https://github.com/swift-precompiled/swift-syntax.git",
            revision: "601.0.1-precompiled.2"
        )
    ],
    targets: [
        .target(
            name: "_SwiftRuntimeExports_Aggregation",
            dependencies: ["_SwiftRuntimeExports"]
        ),
        .binaryTarget(
            name: "_SwiftRuntimeExports",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.1/_SwiftRuntimeExports-cddbf1550772b6def9fb5ad4e6e4f0662c5d2f189057797fa337b95fafeba483.xcframework.zip",
            checksum: "cddbf1550772b6def9fb5ad4e6e4f0662c5d2f189057797fa337b95fafeba483"
        ),
        .target(
            name: "_PythonString_Aggregation",
            dependencies: ["_PythonString"]
        ),
        .binaryTarget(
            name: "_PythonString",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.1/_PythonString-87a58a020786a5afacdbb987ea50ce0b69ce37941bc95b2761c828b9f330c040.xcframework.zip",
            checksum: "87a58a020786a5afacdbb987ea50ce0b69ce37941bc95b2761c828b9f330c040"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.1/_SwallowSwiftOverlay-8fc28f09bacbf62672e667382302bc6bb97a1e13d30b1d05a26de0c750dbdb23.xcframework.zip",
            checksum: "8fc28f09bacbf62672e667382302bc6bb97a1e13d30b1d05a26de0c750dbdb23"
        ),
        .target(
            name: "LoremIpsum_Aggregation",
            dependencies: ["LoremIpsum"]
        ),
        .binaryTarget(
            name: "LoremIpsum",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.1/LoremIpsum-3b465631a80e4ad84c09f94f84d42dd09d87b36bc83f727bf91a847b404ec4aa.xcframework.zip",
            checksum: "3b465631a80e4ad84c09f94f84d42dd09d87b36bc83f727bf91a847b404ec4aa"
        ),
        .target(
            name: "SE0270_RangeSet_Aggregation",
            dependencies: ["SE0270_RangeSet"]
        ),
        .binaryTarget(
            name: "SE0270_RangeSet",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.1/SE0270_RangeSet-6295574795ef60e5095d67d75e1a462ca2b0e00856df1e0abb350ee81f27b5c4.xcframework.zip",
            checksum: "6295574795ef60e5095d67d75e1a462ca2b0e00856df1e0abb350ee81f27b5c4"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.1/Swallow-1ceec6a3b6d3fae520d01d5a34c1b892827811f452c1019a3c80a639ab1ff4e8.xcframework.zip",
            checksum: "1ceec6a3b6d3fae520d01d5a34c1b892827811f452c1019a3c80a639ab1ff4e8"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.1/Compute-b3c242f4bf653ce74584a63abae77a6f0a76853824dd70c7c1eefdbcfeca7b55.xcframework.zip",
            checksum: "b3c242f4bf653ce74584a63abae77a6f0a76853824dd70c7c1eefdbcfeca7b55"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.1/CoreModel-b2c629c9b17853a0a1113daa3580d78d19b37ece2d4381931aca36f86a3976a8.xcframework.zip",
            checksum: "b2c629c9b17853a0a1113daa3580d78d19b37ece2d4381931aca36f86a3976a8"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.1/ErrorX-04587736c90cb1267dd912d96c24e081853877fb370b6ccb9e31de77e3889175.xcframework.zip",
            checksum: "04587736c90cb1267dd912d96c24e081853877fb370b6ccb9e31de77e3889175"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.1/Diagnostics-c9a1c1cb43336cc6ce9fc80f5dabadfd332a56b0e6ea32707ce81dd283774e5b.xcframework.zip",
            checksum: "c9a1c1cb43336cc6ce9fc80f5dabadfd332a56b0e6ea32707ce81dd283774e5b"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.1/FoundationX-d2825e4dcc6dbb54638ba8f6450abf84f7b473ff6a11e841c66d567272e4c078.xcframework.zip",
            checksum: "d2825e4dcc6dbb54638ba8f6450abf84f7b473ff6a11e841c66d567272e4c078"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.1/POSIX-cca8714dee32e64407728074fb10abc4272fcfd8e6932db489b33d4ff1f1dbe7.xcframework.zip",
            checksum: "cca8714dee32e64407728074fb10abc4272fcfd8e6932db489b33d4ff1f1dbe7"
        ),
        .target(
            name: "_RuntimeC_Aggregation",
            dependencies: ["_RuntimeC"]
        ),
        .binaryTarget(
            name: "_RuntimeC",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.1/_RuntimeC-f0d7008be242c39c21f9537e7d00379510a137a8331107f0a08b379c0fc5b7c8.xcframework.zip",
            checksum: "f0d7008be242c39c21f9537e7d00379510a137a8331107f0a08b379c0fc5b7c8"
        ),
        .target(
            name: "_RuntimeKeyPath_Aggregation",
            dependencies: ["_RuntimeKeyPath", "Swallow_Aggregation"]
        ),
        .binaryTarget(
            name: "_RuntimeKeyPath",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.1/_RuntimeKeyPath-5d750ec611455c33ee00f0e47ce685d077a3a6fa3f7feeac68e3f4811c3f286b.xcframework.zip",
            checksum: "5d750ec611455c33ee00f0e47ce685d077a3a6fa3f7feeac68e3f4811c3f286b"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.1/Runtime-b9ee438f1c646724f50f302e87e7cf18c5ba5864358d2c1cc063d473887b287c.xcframework.zip",
            checksum: "b9ee438f1c646724f50f302e87e7cf18c5ba5864358d2c1cc063d473887b287c"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.1/SwallowMacrosClient-709fe36842d88c9d2e225726d8283c19b6f95ecbe2b9c2a4d0956a317aa8201a.xcframework.zip",
            checksum: "709fe36842d88c9d2e225726d8283c19b6f95ecbe2b9c2a4d0956a317aa8201a"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.1/MacroBuilder-a19408a549a421b150d546d2c820055aca26c4eb0b6666f7ae25dcff71fe186b.xcframework.zip",
            checksum: "a19408a549a421b150d546d2c820055aca26c4eb0b6666f7ae25dcff71fe186b"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-3e509d3-precompiled.1/SwiftSyntaxUtilities-f1a33b940f1ee9fe0f06090e9935b95a9d678d4bf39fc547ff6ddb2127f48fd3.xcframework.zip",
            checksum: "f1a33b940f1ee9fe0f06090e9935b95a9d678d4bf39fc547ff6ddb2127f48fd3"
        )
    ]
)