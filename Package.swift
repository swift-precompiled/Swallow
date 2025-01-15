// swift-tools-version:5.10

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
                "SE0270_RangeSet_Aggregation",
                "Swallow_Aggregation",
                "Compute_Aggregation",
                "CoreModel_Aggregation",
                "Diagnostics_Aggregation",
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
            name: "MacroBuilder",
            targets: ["MacroBuilder_Aggregation"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/swift-precompiled/swift-collections",
            "1.1.0"..<"2.0.0"
        ),
        .package(
            url: "https://github.com/swift-precompiled/swift-syntax",
            "600.0.1"..<"601.0.0"
        )
    ],
    targets: [
        .target(
            name: "_PythonString_Aggregation",
            dependencies: [.target(name: "_PythonString")]
        ),
        .binaryTarget(
            name: "_PythonString",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220589789.zip",
            checksum: "c7be31422f01446f2f51b21447a76e37263b530a414b6d246bfa61d51172a527"
        ),
        .target(
            name: "_RuntimeC_Aggregation",
            dependencies: [.target(name: "_RuntimeC")]
        ),
        .binaryTarget(
            name: "_RuntimeC",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220589792.zip",
            checksum: "f8e92a1a127c56901a9a9d52f9cfaa24ce71a3c3b07c0e8fb33f4f70b54aa008"
        ),
        .target(
            name: "_RuntimeKeyPath_Aggregation",
            dependencies: [.target(name: "_RuntimeKeyPath"), "Swallow_Aggregation"]
        ),
        .binaryTarget(
            name: "_RuntimeKeyPath",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220589794.zip",
            checksum: "25f21e2be4bf9e400eb7401d8ea315f80e51e7454c14e45ef3010693e7f65df1"
        ),
        .target(
            name: "_SwallowSwiftOverlay_Aggregation",
            dependencies: [
                .target(name: "_SwallowSwiftOverlay"),
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
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220589807.zip",
            checksum: "3a09d0e87f77ceef20c16fbd359616ccf831e37e1476be1d6e4e63342f361506"
        ),
        .target(
            name: "SE0270_RangeSet_Aggregation",
            dependencies: [.target(name: "SE0270_RangeSet")]
        ),
        .binaryTarget(
            name: "SE0270_RangeSet",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220589811.zip",
            checksum: "3f6a502cae5de7fa11115ef408aaec79a8e6432e9e33add6509385dd883d3e77"
        ),
        .target(
            name: "Swallow_Aggregation",
            dependencies: [
                .target(name: "Swallow"),
                "_RuntimeC_Aggregation",
                "_SwallowSwiftOverlay_Aggregation",
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
            name: "Swallow",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220589873.zip",
            checksum: "c8a51700a43737573b17cdf4f01921ee42e2c865440d4cd6ea0fddcca1b3d3c5"
        ),
        .target(
            name: "Compute_Aggregation",
            dependencies: [
                .target(name: "Compute"),
                "Diagnostics_Aggregation",
                "Swallow_Aggregation",
                .product(
                    name: "Collections",
                    package: "swift-collections"
                )
            ]
        ),
        .binaryTarget(
            name: "Compute",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220589875.zip",
            checksum: "f330ff6fd6bb87cd53e19d5ec9736c91fd2a2d8a18c303ea93b9104c7c4be4c0"
        ),
        .target(
            name: "CoreModel_Aggregation",
            dependencies: [
                .target(name: "CoreModel"),
                "Diagnostics_Aggregation",
                "Swallow_Aggregation",
                .product(
                    name: "Collections",
                    package: "swift-collections"
                )
            ]
        ),
        .binaryTarget(
            name: "CoreModel",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220589876.zip",
            checksum: "9cd8319ead449ac24ed74a42126f2ddc3e6416c922b5e94c7068a7d08797675d"
        ),
        .target(
            name: "Diagnostics_Aggregation",
            dependencies: [
                .target(name: "Diagnostics"),
                "Swallow_Aggregation",
                "SwallowMacrosClient_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "Diagnostics",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220589877.zip",
            checksum: "1dbc2dbf971e90a0f8f6eac07607d65560fd5e5df0fe27c522a27c8d3ac90619"
        ),
        .target(
            name: "FoundationX_Aggregation",
            dependencies: [
                .target(name: "FoundationX"),
                "Diagnostics_Aggregation",
                "Swallow_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "FoundationX",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220589886.zip",
            checksum: "7ce383a24c9c781a5ebeeab6c6c47196ef675971c08adcc3e47bf8b962c03b54"
        ),
        .target(
            name: "LoremIpsum_Aggregation",
            dependencies: [.target(name: "LoremIpsum")]
        ),
        .binaryTarget(
            name: "LoremIpsum",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220589887.zip",
            checksum: "c31cc56a7d1cb6da9a41181686183c8585fb57171deed0c4631768bae385d0d7"
        ),
        .target(
            name: "POSIX_Aggregation",
            dependencies: [.target(name: "POSIX"), "Swallow_Aggregation"]
        ),
        .binaryTarget(
            name: "POSIX",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220589888.zip",
            checksum: "f57eb07cea11b7d17e93a175acaff9fead57ca25b9630459a5d853f06aff245e"
        ),
        .target(
            name: "Runtime_Aggregation",
            dependencies: [
                .target(name: "Runtime"),
                "_RuntimeC_Aggregation",
                "_RuntimeKeyPath_Aggregation",
                "Compute_Aggregation",
                "FoundationX_Aggregation",
                "Swallow_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "Runtime",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220589892.zip",
            checksum: "8553420e10ac7989bf0ebee903a57a872c2531071786a7a27a9fdf36748f8ae1"
        ),
        .target(
            name: "SwallowMacrosClient_Aggregation",
            dependencies: [
                .target(name: "SwallowMacrosClient"),
                "SwallowMacros",
                "Swallow_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwallowMacrosClient",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220589899.zip",
            checksum: "e919bcaf1cd230c8465c0de26ec0083b000c128a96c38b95c3b21ce2f5076fc2"
        ),
        .target(
            name: "MacroBuilder_Aggregation",
            dependencies: [
                .target(name: "MacroBuilder"),
                "Swallow_Aggregation",
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
                    name: "SwiftParserDiagnostics",
                    package: "swift-syntax"
                )
            ]
        ),
        .binaryTarget(
            name: "MacroBuilder",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220589901.zip",
            checksum: "0ab8ac187d61f9a6268730e77c7d51e06001cb2872011a773d5ec2fe9a12ed10"
        ),
        .macro(
            name: "SwallowMacros",
            dependencies: [
                "SwiftSyntaxUtilities_Aggregation",
                .product(
                    name: "SwiftSyntax",
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
                .product(
                    name: "SwiftCompilerPlugin",
                    package: "swift-syntax"
                )
            ],
            path: "Macros/SwallowMacros"
        ),
        .target(
            name: "SwiftSyntaxUtilities_Aggregation",
            dependencies: [
                .target(name: "SwiftSyntaxUtilities"),
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
                )
            ]
        ),
        .binaryTarget(
            name: "SwiftSyntaxUtilities",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220589903.zip",
            checksum: "18235778fce08b40c552a026f005efb06501784869e2ac60fe99d94788b160fe"
        )
    ]
)