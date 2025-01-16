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
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220832811.zip",
            checksum: "f314959e91eadb049ab5f5121da10e67da075c5d4b55d470585e5fc6cdb271e4"
        ),
        .target(
            name: "_RuntimeC_Aggregation",
            dependencies: [.target(name: "_RuntimeC")]
        ),
        .binaryTarget(
            name: "_RuntimeC",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220832813.zip",
            checksum: "3ec98448263e8c00b177721ab36a46e17b2b0dbf73a8994c986768eca955e09a"
        ),
        .target(
            name: "_RuntimeKeyPath_Aggregation",
            dependencies: [.target(name: "_RuntimeKeyPath"), "Swallow_Aggregation"]
        ),
        .binaryTarget(
            name: "_RuntimeKeyPath",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220832814.zip",
            checksum: "66f7c53088531e6e895dc56402753ab11c8d0f9659502da9d3cb23f4b331f2ae"
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
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220832815.zip",
            checksum: "acfa3eaf8abb0030761d59346315ae00ec289cc61eb3032b73e69d12a5925145"
        ),
        .target(
            name: "SE0270_RangeSet_Aggregation",
            dependencies: [.target(name: "SE0270_RangeSet")]
        ),
        .binaryTarget(
            name: "SE0270_RangeSet",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220832818.zip",
            checksum: "626b40c08541fd7dc3104509f78636104bb66653f4a172a692ee051856214c21"
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
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220832820.zip",
            checksum: "0620f492a355dfb1ab4e911b8571eda0407bddc7d9367ce273837c961e9b2955"
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
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220832822.zip",
            checksum: "c70e2cef974441b93b9e70aa6858e4086cd4d66468341ef320678d4bd1edf93f"
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
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220832823.zip",
            checksum: "3c61d1cd74e51e93de0db1e743d2b82f9b9fcb7df7aa63e210fa27771f570dde"
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
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220832824.zip",
            checksum: "21fb940be30c1d5a34a062ddacaac983d8109f24e85615e1ea168338b94bb20a"
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
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220832825.zip",
            checksum: "9842f9876f8fea180536f77ce3201524e4a14877143fc077abc54a61cf0e3de7"
        ),
        .target(
            name: "LoremIpsum_Aggregation",
            dependencies: [.target(name: "LoremIpsum")]
        ),
        .binaryTarget(
            name: "LoremIpsum",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220832826.zip",
            checksum: "ae1763b19c6aa456689d15fbaab5073d177b52ad05a781599bef632f91639b71"
        ),
        .target(
            name: "POSIX_Aggregation",
            dependencies: [.target(name: "POSIX"), "Swallow_Aggregation"]
        ),
        .binaryTarget(
            name: "POSIX",
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220832827.zip",
            checksum: "feeb799a596c603cff42820aa62ca423d64bc0698042558ce023d6d97a2ccfd2"
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
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220832830.zip",
            checksum: "f8f20f7deecd558b363cd05f29a2d2baee1683a150789a1c4b905667ea30d921"
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
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220832831.zip",
            checksum: "f8739ecf2e3a1ae55271134d9ca457d48756bb69a97ca11a68d4024a9815e6fa"
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
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220832832.zip",
            checksum: "ee13a9f75f679b366c7a15db9f3869c1839cb1eaa20ecde033a75ba8b7a34dc6"
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
            url: "https://api.github.com/repos/swift-precompiled/Swallow/releases/assets/220832833.zip",
            checksum: "fe2c58028e7c115a6e09e962a4bf518281d7bb239f08ee1625626c31642ae77c"
        )
    ]
)