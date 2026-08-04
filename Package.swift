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
            dependencies: ["_SwiftRuntimeExports"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_SwiftRuntimeExports",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/_SwiftRuntimeExports-36ef7a9f7476bbf5a4cbc1069aa1fd0421532a89ba982a6321eb823f17367bd0.xcframework.zip",
            checksum: "36ef7a9f7476bbf5a4cbc1069aa1fd0421532a89ba982a6321eb823f17367bd0"
        ),
        .target(
            name: "_PythonString_Aggregation",
            dependencies: ["_PythonString"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_PythonString",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/_PythonString-dabf820e801cc5b8a80a7de1659a050ffd1b39979a82c2f074efe359ce0f395b.xcframework.zip",
            checksum: "dabf820e801cc5b8a80a7de1659a050ffd1b39979a82c2f074efe359ce0f395b"
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
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_SwallowSwiftOverlay",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/_SwallowSwiftOverlay-fcc593807b1d1d408d8e3989bdd9b822bb709a0b36eb99ef1e0cb4a8aed87007.xcframework.zip",
            checksum: "fcc593807b1d1d408d8e3989bdd9b822bb709a0b36eb99ef1e0cb4a8aed87007"
        ),
        .target(
            name: "LoremIpsum_Aggregation",
            dependencies: ["LoremIpsum"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "LoremIpsum",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/LoremIpsum-d31b39d6f21461d6c5f09532e4f6955164646aebc89936894c8661308fb97e28.xcframework.zip",
            checksum: "d31b39d6f21461d6c5f09532e4f6955164646aebc89936894c8661308fb97e28"
        ),
        .target(
            name: "SE0270_RangeSet_Aggregation",
            dependencies: ["SE0270_RangeSet"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SE0270_RangeSet",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/SE0270_RangeSet-f78af79f9a9c62e70ad2a397e2bc2a49a2138ea98f823d9f77dc3705e501c9e2.xcframework.zip",
            checksum: "f78af79f9a9c62e70ad2a397e2bc2a49a2138ea98f823d9f77dc3705e501c9e2"
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
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Swallow",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/Swallow-553275478c046d6fbc7ce210a13ffb331a536c4432bcf82277a3dc84d3d4b6f3.xcframework.zip",
            checksum: "553275478c046d6fbc7ce210a13ffb331a536c4432bcf82277a3dc84d3d4b6f3"
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
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Compute",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/Compute-05004ac28c49b144a8c56150f72bf9adb6607a13b6c59f335769ceb8af17568e.xcframework.zip",
            checksum: "05004ac28c49b144a8c56150f72bf9adb6607a13b6c59f335769ceb8af17568e"
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
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "CoreModel",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/CoreModel-b10c627156aa06202680a1c2ad1b55803dc8eb76922287ea81c20e63c3de5425.xcframework.zip",
            checksum: "b10c627156aa06202680a1c2ad1b55803dc8eb76922287ea81c20e63c3de5425"
        ),
        .target(
            name: "ErrorX_Aggregation",
            dependencies: [
                "ErrorX",
                "ErrorXMacros",
                "Swallow_Aggregation"
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "ErrorX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/ErrorX-e0dfdcd21a415fd8f93dacba9aeb5002538342151c8844b5ccc04e262023332e.xcframework.zip",
            checksum: "e0dfdcd21a415fd8f93dacba9aeb5002538342151c8844b5ccc04e262023332e"
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
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Diagnostics",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/Diagnostics-a70aea2cbaf004059be7f910835ae1f596e1970ebc236be6c3e326d6307d6e08.xcframework.zip",
            checksum: "a70aea2cbaf004059be7f910835ae1f596e1970ebc236be6c3e326d6307d6e08"
        ),
        .target(
            name: "FoundationX_Aggregation",
            dependencies: [
                "FoundationX",
                "Diagnostics_Aggregation",
                "Swallow_Aggregation"
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "FoundationX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/FoundationX-97e43f778381e907962f3564615183503eba8133bba622679af99b8a4c85c24d.xcframework.zip",
            checksum: "97e43f778381e907962f3564615183503eba8133bba622679af99b8a4c85c24d"
        ),
        .target(
            name: "POSIX_Aggregation",
            dependencies: [
                "POSIX",
                "Swallow_Aggregation",
                "SwallowMacrosClient_Aggregation"
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "POSIX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/POSIX-270b3e0282a96d7dd89d3eef67ef751bfb9bb6468ba6e0da3943c581a76d6819.xcframework.zip",
            checksum: "270b3e0282a96d7dd89d3eef67ef751bfb9bb6468ba6e0da3943c581a76d6819"
        ),
        .target(
            name: "_RuntimeC_Aggregation",
            dependencies: ["_RuntimeC"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_RuntimeC",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/_RuntimeC-59d37adf5efadeb2f395bc6aa86f1e2eb27147ba40ad6af3c7cbb03339a83f48.xcframework.zip",
            checksum: "59d37adf5efadeb2f395bc6aa86f1e2eb27147ba40ad6af3c7cbb03339a83f48"
        ),
        .target(
            name: "_RuntimeKeyPath_Aggregation",
            dependencies: ["_RuntimeKeyPath", "Swallow_Aggregation"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_RuntimeKeyPath",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/_RuntimeKeyPath-973069de7f00e8f0a10982583f5e5abd7f96023e470c5c70fd6d0551d4952bf0.xcframework.zip",
            checksum: "973069de7f00e8f0a10982583f5e5abd7f96023e470c5c70fd6d0551d4952bf0"
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
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Runtime",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/Runtime-b5878ca5c60785959acd445e28cde4eb9feb3750ee9369a58490b483832d4e58.xcframework.zip",
            checksum: "b5878ca5c60785959acd445e28cde4eb9feb3750ee9369a58490b483832d4e58"
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
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwallowMacrosClient",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/SwallowMacrosClient-cdd309d96de55becdf32992795cb408fb103b443928e118bfaf549a4a4e83bc9.xcframework.zip",
            checksum: "cdd309d96de55becdf32992795cb408fb103b443928e118bfaf549a4a4e83bc9"
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
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "MacroBuilder",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/MacroBuilder-ea6109fae5517dade1718b37d755d4a5ded09d467f241fa5edaa8cb394450e18.xcframework.zip",
            checksum: "ea6109fae5517dade1718b37d755d4a5ded09d467f241fa5edaa8cb394450e18"
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
            ],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntaxUtilities",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-7a1b723dcdad1a288b9152492c84178817674327/SwiftSyntaxUtilities-906ccb07e4aeda37d05682bdac753f234d51c17e37cf2827b3ff78637c58f8ff.xcframework.zip",
            checksum: "906ccb07e4aeda37d05682bdac753f234d51c17e37cf2827b3ff78637c58f8ff"
        )
    ]
)