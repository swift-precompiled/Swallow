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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/_SwiftRuntimeExports-51d42bf777d1616095b513f8d56d36d26e7bf6fe8db8bdd54dae83cb772ed7a9.xcframework.zip",
            checksum: "51d42bf777d1616095b513f8d56d36d26e7bf6fe8db8bdd54dae83cb772ed7a9"
        ),
        .target(
            name: "_PythonString_Aggregation",
            dependencies: ["_PythonString"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_PythonString",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/_PythonString-768376a637acd225d202763349b024e30656c16b490499923c5371da3c91c69b.xcframework.zip",
            checksum: "768376a637acd225d202763349b024e30656c16b490499923c5371da3c91c69b"
        ),
        .target(
            name: "_SwallowSwiftOverlay_Aggregation",
            dependencies: ["_SwallowSwiftOverlay"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_SwallowSwiftOverlay",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/_SwallowSwiftOverlay-06d11f7bd5cbc933be0b7a0e1bfa2c8bea151ae144f032364423d7473ecff887.xcframework.zip",
            checksum: "06d11f7bd5cbc933be0b7a0e1bfa2c8bea151ae144f032364423d7473ecff887"
        ),
        .target(
            name: "LoremIpsum_Aggregation",
            dependencies: ["LoremIpsum"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "LoremIpsum",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/LoremIpsum-20f05b24ad0f0337df42f5187d6154ad5fd6c73b28bef1167726b0bb21767a02.xcframework.zip",
            checksum: "20f05b24ad0f0337df42f5187d6154ad5fd6c73b28bef1167726b0bb21767a02"
        ),
        .target(
            name: "SE0270_RangeSet_Aggregation",
            dependencies: ["SE0270_RangeSet"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SE0270_RangeSet",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/SE0270_RangeSet-6cba0dd247413f4c478b738f7a1e14730044c25c810ff85cc019414fdbcb5028.xcframework.zip",
            checksum: "6cba0dd247413f4c478b738f7a1e14730044c25c810ff85cc019414fdbcb5028"
        ),
        .target(
            name: "Swallow_Aggregation",
            dependencies: ["Swallow"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Swallow",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/Swallow-05f1958fdbe8136304da6de006d97d6a7eb79e52180d8af3acbad4208119d8cb.xcframework.zip",
            checksum: "05f1958fdbe8136304da6de006d97d6a7eb79e52180d8af3acbad4208119d8cb"
        ),
        .target(
            name: "Compute_Aggregation",
            dependencies: ["Compute"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Compute",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/Compute-35a2199265f87c0dfb52051aea8b78f2139ac77df02f3e00b90b71db03937e76.xcframework.zip",
            checksum: "35a2199265f87c0dfb52051aea8b78f2139ac77df02f3e00b90b71db03937e76"
        ),
        .target(
            name: "CoreModel_Aggregation",
            dependencies: ["CoreModel"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "CoreModel",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/CoreModel-0abce2b9dd74fc294994faeaeece7737168e87e63971ddbb11c079f4558cf5dd.xcframework.zip",
            checksum: "0abce2b9dd74fc294994faeaeece7737168e87e63971ddbb11c079f4558cf5dd"
        ),
        .target(
            name: "ErrorX_Aggregation",
            dependencies: ["ErrorX"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "ErrorX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/ErrorX-9541f65f0eeb2eef0f2606dfab4b45012a90d8bf8df06b890c017f8de9c07898.xcframework.zip",
            checksum: "9541f65f0eeb2eef0f2606dfab4b45012a90d8bf8df06b890c017f8de9c07898"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/Diagnostics-dd69002ca026e1327a5aa3c10424802d2d571ce7c49ddce9cb20a19792f606d6.xcframework.zip",
            checksum: "dd69002ca026e1327a5aa3c10424802d2d571ce7c49ddce9cb20a19792f606d6"
        ),
        .target(
            name: "FoundationX_Aggregation",
            dependencies: ["FoundationX"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "FoundationX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/FoundationX-3c015e4ff09c1a75454aea751c0b60ce4bbd6a5a96e51f5dd605e3fb1d73e95c.xcframework.zip",
            checksum: "3c015e4ff09c1a75454aea751c0b60ce4bbd6a5a96e51f5dd605e3fb1d73e95c"
        ),
        .target(
            name: "POSIX_Aggregation",
            dependencies: ["POSIX"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "POSIX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/POSIX-0032bf4ebb9246affb2629048373f8d9a0e885b326818d1a1c35bcc6636f5124.xcframework.zip",
            checksum: "0032bf4ebb9246affb2629048373f8d9a0e885b326818d1a1c35bcc6636f5124"
        ),
        .target(
            name: "_RuntimeC",
            dependencies: ["_RuntimeC_PrecompiledArchive"],
            path: "Sources/_RuntimeC",
            publicHeadersPath: "include"
        ),
        .binaryTarget(
            name: "_RuntimeC_PrecompiledArchive",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/_RuntimeC-31f785ca13ac950e1708b34c6cc36e4d1e114e11a94cb30fa656c5737c627c2a.xcframework.zip",
            checksum: "31f785ca13ac950e1708b34c6cc36e4d1e114e11a94cb30fa656c5737c627c2a"
        ),
        .target(
            name: "_RuntimeKeyPath_Aggregation",
            dependencies: ["_RuntimeKeyPath"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_RuntimeKeyPath",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/_RuntimeKeyPath-9a20bd800afafd931481e36012fcab4d36039fd9bf40e12558c163b8bc36d030.xcframework.zip",
            checksum: "9a20bd800afafd931481e36012fcab4d36039fd9bf40e12558c163b8bc36d030"
        ),
        .target(
            name: "Runtime_Aggregation",
            dependencies: ["Runtime"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Runtime",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/Runtime-8919f8f55c0fbba65a8ff21e6c54bf1bed043dcec7feef8cc51da7239dc15289.xcframework.zip",
            checksum: "8919f8f55c0fbba65a8ff21e6c54bf1bed043dcec7feef8cc51da7239dc15289"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/SwallowMacrosClient-c2ea05ca1b3d949a5979c4edbf172abe9eeaa8d068a2a52fd47ee37d55982569.xcframework.zip",
            checksum: "c2ea05ca1b3d949a5979c4edbf172abe9eeaa8d068a2a52fd47ee37d55982569"
        ),
        .target(
            name: "MacroBuilder_Aggregation",
            dependencies: ["MacroBuilder"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "MacroBuilder",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/MacroBuilder-e34b7eb118dfc3bcf3f8012c71f902959cd65f0f587915fa824fe1dd73a4a95d.xcframework.zip",
            checksum: "e34b7eb118dfc3bcf3f8012c71f902959cd65f0f587915fa824fe1dd73a4a95d"
        ),
        .target(
            name: "SwiftSyntaxUtilities_Aggregation",
            dependencies: ["SwiftSyntaxUtilities"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftSyntaxUtilities",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-6ba39ad9dd35a4f092ffa9cbb69723c4c628bfb3/SwiftSyntaxUtilities-e4ae7da84b219cbfd65eb013f3896aae3f1809a9da5eeb44fb26a882093e71ef.xcframework.zip",
            checksum: "e4ae7da84b219cbfd65eb013f3896aae3f1809a9da5eeb44fb26a882093e71ef"
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