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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2803a6ca7f6867fc5bb029b34769bed481a2b13c/_SwiftRuntimeExports-dbb4580f5840dafc5db3cef851447c1a1b9727daa39368e052c42361c7261b4c.xcframework.zip",
            checksum: "dbb4580f5840dafc5db3cef851447c1a1b9727daa39368e052c42361c7261b4c"
        ),
        .target(
            name: "_PythonString_Aggregation",
            dependencies: ["_PythonString"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_PythonString",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2803a6ca7f6867fc5bb029b34769bed481a2b13c/_PythonString-212baab6b47a6d1edbdd35db6169816de02228023a3f77d27c150b8a7e91e706.xcframework.zip",
            checksum: "212baab6b47a6d1edbdd35db6169816de02228023a3f77d27c150b8a7e91e706"
        ),
        .target(
            name: "_SwallowSwiftOverlay_Aggregation",
            dependencies: ["_SwallowSwiftOverlay"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_SwallowSwiftOverlay",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2803a6ca7f6867fc5bb029b34769bed481a2b13c/_SwallowSwiftOverlay-1b13a3ece4c487f070ff1bf499c58f3fc7412a18c49f7bf92a43cf917837e1d3.xcframework.zip",
            checksum: "1b13a3ece4c487f070ff1bf499c58f3fc7412a18c49f7bf92a43cf917837e1d3"
        ),
        .target(
            name: "LoremIpsum_Aggregation",
            dependencies: ["LoremIpsum"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "LoremIpsum",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2803a6ca7f6867fc5bb029b34769bed481a2b13c/LoremIpsum-eccea25718630285366403cf7b9db035906091d026564ca79d96d7ff63192b09.xcframework.zip",
            checksum: "eccea25718630285366403cf7b9db035906091d026564ca79d96d7ff63192b09"
        ),
        .target(
            name: "SE0270_RangeSet_Aggregation",
            dependencies: ["SE0270_RangeSet"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SE0270_RangeSet",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2803a6ca7f6867fc5bb029b34769bed481a2b13c/SE0270_RangeSet-20acebec7ce849dc71114528e22a38cecd71c2f6d1475e1946b013ce5094338e.xcframework.zip",
            checksum: "20acebec7ce849dc71114528e22a38cecd71c2f6d1475e1946b013ce5094338e"
        ),
        .target(
            name: "Swallow_Aggregation",
            dependencies: ["Swallow"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Swallow",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2803a6ca7f6867fc5bb029b34769bed481a2b13c/Swallow-40931ef2c57a0bb1b270c77b84d8d5bbb7be5e104fd6945d9e42d09bcbc69eea.xcframework.zip",
            checksum: "40931ef2c57a0bb1b270c77b84d8d5bbb7be5e104fd6945d9e42d09bcbc69eea"
        ),
        .target(
            name: "Compute_Aggregation",
            dependencies: ["Compute"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Compute",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2803a6ca7f6867fc5bb029b34769bed481a2b13c/Compute-c3f43f1a9195432bc236087637a579095ff1f4a4ff7412d3dcf047e1332f8c1b.xcframework.zip",
            checksum: "c3f43f1a9195432bc236087637a579095ff1f4a4ff7412d3dcf047e1332f8c1b"
        ),
        .target(
            name: "CoreModel_Aggregation",
            dependencies: ["CoreModel"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "CoreModel",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2803a6ca7f6867fc5bb029b34769bed481a2b13c/CoreModel-d7ac01d46ce1f25e00dcd9afd04b1cb414c1f8266b9ff88b5e79eba7c1de77d1.xcframework.zip",
            checksum: "d7ac01d46ce1f25e00dcd9afd04b1cb414c1f8266b9ff88b5e79eba7c1de77d1"
        ),
        .target(
            name: "ErrorX_Aggregation",
            dependencies: ["ErrorX"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "ErrorX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2803a6ca7f6867fc5bb029b34769bed481a2b13c/ErrorX-d54c82b4e80b73f395ff478f8280fe7a2e64d63da715859a32c92c727ffde098.xcframework.zip",
            checksum: "d54c82b4e80b73f395ff478f8280fe7a2e64d63da715859a32c92c727ffde098"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2803a6ca7f6867fc5bb029b34769bed481a2b13c/Diagnostics-ed434676e36464ad6c8f47ed805dca689960111cab12739590e4a62723355378.xcframework.zip",
            checksum: "ed434676e36464ad6c8f47ed805dca689960111cab12739590e4a62723355378"
        ),
        .target(
            name: "FoundationX_Aggregation",
            dependencies: ["FoundationX"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "FoundationX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2803a6ca7f6867fc5bb029b34769bed481a2b13c/FoundationX-acde832c547b6f87a6300bcd7fa8716a929cb2613593b5c871d4f3926834fa23.xcframework.zip",
            checksum: "acde832c547b6f87a6300bcd7fa8716a929cb2613593b5c871d4f3926834fa23"
        ),
        .target(
            name: "POSIX_Aggregation",
            dependencies: ["POSIX"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "POSIX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2803a6ca7f6867fc5bb029b34769bed481a2b13c/POSIX-a665c92bf0e579208ec5a5ace3bf7b87f02e462b9f05ab65df43652d510a3848.xcframework.zip",
            checksum: "a665c92bf0e579208ec5a5ace3bf7b87f02e462b9f05ab65df43652d510a3848"
        ),
        .binaryTarget(
            name: "_RuntimeC",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2803a6ca7f6867fc5bb029b34769bed481a2b13c/_RuntimeC-4e34d63ed9969595c2407a1320786a897309a998df09c694a0ab7915628e5368.xcframework.zip",
            checksum: "4e34d63ed9969595c2407a1320786a897309a998df09c694a0ab7915628e5368"
        ),
        .target(
            name: "_RuntimeKeyPath_Aggregation",
            dependencies: ["_RuntimeKeyPath"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_RuntimeKeyPath",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2803a6ca7f6867fc5bb029b34769bed481a2b13c/_RuntimeKeyPath-f31469ca3b9e0bd0a06771b8fc67b55e3d8428036d0d350b3085b46c963cf25e.xcframework.zip",
            checksum: "f31469ca3b9e0bd0a06771b8fc67b55e3d8428036d0d350b3085b46c963cf25e"
        ),
        .target(
            name: "Runtime_Aggregation",
            dependencies: ["Runtime"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Runtime",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2803a6ca7f6867fc5bb029b34769bed481a2b13c/Runtime-f0932427c1b0a880dc7bf8db7cef88ec00af1a8c94caa78b2eeca006d2769660.xcframework.zip",
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2803a6ca7f6867fc5bb029b34769bed481a2b13c/SwallowMacrosClient-f45571109efc1e4315e049d3f0d475e5567a0f95005a96560dfb77b6780ee0a4.xcframework.zip",
            checksum: "f45571109efc1e4315e049d3f0d475e5567a0f95005a96560dfb77b6780ee0a4"
        ),
        .target(
            name: "MacroBuilder_Aggregation",
            dependencies: ["MacroBuilder"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "MacroBuilder",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2803a6ca7f6867fc5bb029b34769bed481a2b13c/MacroBuilder-f8f41e142d03976798e0b38308a3741c0343fd8fe0dea179ef4325e90132cc5d.xcframework.zip",
            checksum: "f8f41e142d03976798e0b38308a3741c0343fd8fe0dea179ef4325e90132cc5d"
        ),
        .target(
            name: "SwiftSyntaxUtilities_Aggregation",
            dependencies: ["SwiftSyntaxUtilities"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntaxUtilities",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2803a6ca7f6867fc5bb029b34769bed481a2b13c/SwiftSyntaxUtilities-a1d66826355d3a81a1d213e6b72dfe95e1e74ce5d5a2b9983ffecf6aa8d99663.xcframework.zip",
            checksum: "a1d66826355d3a81a1d213e6b72dfe95e1e74ce5d5a2b9983ffecf6aa8d99663"
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