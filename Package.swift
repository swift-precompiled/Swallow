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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-0783f4b8c44c0b7df59e74702a1de7927c4baa47/_SwiftRuntimeExports-d6793904fd8d0d5838828b3f5c2e3fd7b3cef41a9295f264fc827bc3faa78846.xcframework.zip",
            checksum: "d6793904fd8d0d5838828b3f5c2e3fd7b3cef41a9295f264fc827bc3faa78846"
        ),
        .target(
            name: "_PythonString_Aggregation",
            dependencies: ["_PythonString"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_PythonString",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-0783f4b8c44c0b7df59e74702a1de7927c4baa47/_PythonString-212baab6b47a6d1edbdd35db6169816de02228023a3f77d27c150b8a7e91e706.xcframework.zip",
            checksum: "212baab6b47a6d1edbdd35db6169816de02228023a3f77d27c150b8a7e91e706"
        ),
        .target(
            name: "_SwallowSwiftOverlay_Aggregation",
            dependencies: ["_SwallowSwiftOverlay"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_SwallowSwiftOverlay",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-0783f4b8c44c0b7df59e74702a1de7927c4baa47/_SwallowSwiftOverlay-1b13a3ece4c487f070ff1bf499c58f3fc7412a18c49f7bf92a43cf917837e1d3.xcframework.zip",
            checksum: "1b13a3ece4c487f070ff1bf499c58f3fc7412a18c49f7bf92a43cf917837e1d3"
        ),
        .target(
            name: "LoremIpsum_Aggregation",
            dependencies: ["LoremIpsum"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "LoremIpsum",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-0783f4b8c44c0b7df59e74702a1de7927c4baa47/LoremIpsum-90d80cfcf0c2165f353682159ab6e0c60f3f80a28e868a5f58da4d12435be6e1.xcframework.zip",
            checksum: "90d80cfcf0c2165f353682159ab6e0c60f3f80a28e868a5f58da4d12435be6e1"
        ),
        .target(
            name: "SE0270_RangeSet_Aggregation",
            dependencies: ["SE0270_RangeSet"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SE0270_RangeSet",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-0783f4b8c44c0b7df59e74702a1de7927c4baa47/SE0270_RangeSet-2e41b551d27f9813493004459959adb7107c0c2da9bdbf27af7b167bd9ee2852.xcframework.zip",
            checksum: "2e41b551d27f9813493004459959adb7107c0c2da9bdbf27af7b167bd9ee2852"
        ),
        .target(
            name: "Swallow_Aggregation",
            dependencies: ["Swallow"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Swallow",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-0783f4b8c44c0b7df59e74702a1de7927c4baa47/Swallow-e8e2ec13285c722dfa41010b984bef234c2e2ea3b551f680fbb606f5e9e6773d.xcframework.zip",
            checksum: "e8e2ec13285c722dfa41010b984bef234c2e2ea3b551f680fbb606f5e9e6773d"
        ),
        .target(
            name: "Compute_Aggregation",
            dependencies: ["Compute"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Compute",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-0783f4b8c44c0b7df59e74702a1de7927c4baa47/Compute-426a0f647ebe91c152304cac0d46240b7caa67dc047028d1677bdc55f373a14b.xcframework.zip",
            checksum: "426a0f647ebe91c152304cac0d46240b7caa67dc047028d1677bdc55f373a14b"
        ),
        .target(
            name: "CoreModel_Aggregation",
            dependencies: ["CoreModel"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "CoreModel",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-0783f4b8c44c0b7df59e74702a1de7927c4baa47/CoreModel-d7ac01d46ce1f25e00dcd9afd04b1cb414c1f8266b9ff88b5e79eba7c1de77d1.xcframework.zip",
            checksum: "d7ac01d46ce1f25e00dcd9afd04b1cb414c1f8266b9ff88b5e79eba7c1de77d1"
        ),
        .target(
            name: "ErrorX_Aggregation",
            dependencies: ["ErrorX"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "ErrorX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-0783f4b8c44c0b7df59e74702a1de7927c4baa47/ErrorX-14df4fee4e0bd6a4a8283f908a1e6452ce89b7672d40dcf821a1278108ebc260.xcframework.zip",
            checksum: "14df4fee4e0bd6a4a8283f908a1e6452ce89b7672d40dcf821a1278108ebc260"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-0783f4b8c44c0b7df59e74702a1de7927c4baa47/Diagnostics-5ccd809bc6f64fdabdc896f08105ab926d5c23dea7c738dd968107aa8658df74.xcframework.zip",
            checksum: "5ccd809bc6f64fdabdc896f08105ab926d5c23dea7c738dd968107aa8658df74"
        ),
        .target(
            name: "FoundationX_Aggregation",
            dependencies: ["FoundationX"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "FoundationX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-0783f4b8c44c0b7df59e74702a1de7927c4baa47/FoundationX-7311aad941ce6727624169c5bf09f0ad67b5127a098b3ebfd87c8a733b141e2e.xcframework.zip",
            checksum: "7311aad941ce6727624169c5bf09f0ad67b5127a098b3ebfd87c8a733b141e2e"
        ),
        .target(
            name: "POSIX_Aggregation",
            dependencies: ["POSIX"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "POSIX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-0783f4b8c44c0b7df59e74702a1de7927c4baa47/POSIX-a665c92bf0e579208ec5a5ace3bf7b87f02e462b9f05ab65df43652d510a3848.xcframework.zip",
            checksum: "a665c92bf0e579208ec5a5ace3bf7b87f02e462b9f05ab65df43652d510a3848"
        ),
        .target(
            name: "_RuntimeC",
            dependencies: ["_RuntimeC_PrecompiledArchive"],
            path: "Sources/_RuntimeC",
            sources: ["Empty.mm"],
            publicHeadersPath: "include",
            cSettings: [.headerSearchPath("include")]
        ),
        .binaryTarget(
            name: "_RuntimeC_PrecompiledArchive",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-0783f4b8c44c0b7df59e74702a1de7927c4baa47/_RuntimeC-3fa2095279a92f1e322b4c29ffdba0062c8203e5418cc771195ab42a4f6b694d.xcframework.zip",
            checksum: "3fa2095279a92f1e322b4c29ffdba0062c8203e5418cc771195ab42a4f6b694d"
        ),
        .target(
            name: "_RuntimeKeyPath_Aggregation",
            dependencies: ["_RuntimeKeyPath"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_RuntimeKeyPath",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-0783f4b8c44c0b7df59e74702a1de7927c4baa47/_RuntimeKeyPath-23da888976401ed185e0b27917b46aae521cdfe17badc8ee70dee2ef0c449335.xcframework.zip",
            checksum: "23da888976401ed185e0b27917b46aae521cdfe17badc8ee70dee2ef0c449335"
        ),
        .target(
            name: "Runtime_Aggregation",
            dependencies: ["Runtime"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Runtime",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-0783f4b8c44c0b7df59e74702a1de7927c4baa47/Runtime-f0932427c1b0a880dc7bf8db7cef88ec00af1a8c94caa78b2eeca006d2769660.xcframework.zip",
            checksum: "f0932427c1b0a880dc7bf8db7cef88ec00af1a8c94caa78b2eeca006d2769660"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-0783f4b8c44c0b7df59e74702a1de7927c4baa47/SwallowMacrosClient-f45571109efc1e4315e049d3f0d475e5567a0f95005a96560dfb77b6780ee0a4.xcframework.zip",
            checksum: "f45571109efc1e4315e049d3f0d475e5567a0f95005a96560dfb77b6780ee0a4"
        ),
        .target(
            name: "MacroBuilder_Aggregation",
            dependencies: ["MacroBuilder"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "MacroBuilder",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-0783f4b8c44c0b7df59e74702a1de7927c4baa47/MacroBuilder-1ea9881dc8ebd1b8a12d06dae581798a424884cb173d7275a4f4be92813f049c.xcframework.zip",
            checksum: "1ea9881dc8ebd1b8a12d06dae581798a424884cb173d7275a4f4be92813f049c"
        ),
        .target(
            name: "SwiftSyntaxUtilities_Aggregation",
            dependencies: ["SwiftSyntaxUtilities"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntaxUtilities",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-0783f4b8c44c0b7df59e74702a1de7927c4baa47/SwiftSyntaxUtilities-a0c4f68b92b0b6f5d42007733085f5f4f29fa4f2db696b42268a7441f278d2e6.xcframework.zip",
            checksum: "a0c4f68b92b0b6f5d42007733085f5f4f29fa4f2db696b42268a7441f278d2e6"
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