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
            "1.2.0"..<"2.0.0"
        ),
        .package(
            url: "https://github.com/swift-precompiled/swift-collections",
            "1.1.0"..<"2.0.0"
        ),
        .package(
            url: "https://github.com/swift-precompiled/swift-syntax.git",
            "601.0.0"..<"602.0.0"
        )
    ],
    targets: [
        .target(
            name: "_SwiftRuntimeExports_Aggregation",
            dependencies: ["_SwiftRuntimeExports"]
        ),
        .binaryTarget(
            name: "_SwiftRuntimeExports",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-94c09a5/_SwiftRuntimeExports-03a7ce85e7693bce0bca30ed4647284613acdc6476a9b0c5035ed747b1442807.xcframework.zip",
            checksum: "03a7ce85e7693bce0bca30ed4647284613acdc6476a9b0c5035ed747b1442807"
        ),
        .target(
            name: "_PythonString_Aggregation",
            dependencies: ["_PythonString"]
        ),
        .binaryTarget(
            name: "_PythonString",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-94c09a5/_PythonString-c534ae78b51cc127af21a76516f7b851c1f677b3d7ac8e5d21824e466fbdb94e.xcframework.zip",
            checksum: "c534ae78b51cc127af21a76516f7b851c1f677b3d7ac8e5d21824e466fbdb94e"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-94c09a5/_SwallowSwiftOverlay-86ce260158307328ec537994fb417686df3b06027a5bf5a86b5ad868e566e2f0.xcframework.zip",
            checksum: "86ce260158307328ec537994fb417686df3b06027a5bf5a86b5ad868e566e2f0"
        ),
        .target(
            name: "LoremIpsum_Aggregation",
            dependencies: ["LoremIpsum"]
        ),
        .binaryTarget(
            name: "LoremIpsum",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-94c09a5/LoremIpsum-183bb083a480d9f2f58806c6fc7fe00b114f822f5b19eae2ef154fa13241f15d.xcframework.zip",
            checksum: "183bb083a480d9f2f58806c6fc7fe00b114f822f5b19eae2ef154fa13241f15d"
        ),
        .target(
            name: "SE0270_RangeSet_Aggregation",
            dependencies: ["SE0270_RangeSet"]
        ),
        .binaryTarget(
            name: "SE0270_RangeSet",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-94c09a5/SE0270_RangeSet-951bf1e2e45e6c559a38ea95d8bc0bfc0dc602b180be0eac25bedd4dfd5b44ee.xcframework.zip",
            checksum: "951bf1e2e45e6c559a38ea95d8bc0bfc0dc602b180be0eac25bedd4dfd5b44ee"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-94c09a5/Swallow-d968ce75439d7f8a9a526b2c419841cd3efadca7b3dc908c4c3aae1db3697e54.xcframework.zip",
            checksum: "d968ce75439d7f8a9a526b2c419841cd3efadca7b3dc908c4c3aae1db3697e54"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-94c09a5/Compute-edd7e558f5f52441012256e681525bc48f12110ccbb44e952794a418a6f1ac4b.xcframework.zip",
            checksum: "edd7e558f5f52441012256e681525bc48f12110ccbb44e952794a418a6f1ac4b"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-94c09a5/CoreModel-c46289cf4fe8e71e4f27b17000575b7a64e4f029f8328721faacd5f266d6292e.xcframework.zip",
            checksum: "c46289cf4fe8e71e4f27b17000575b7a64e4f029f8328721faacd5f266d6292e"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-94c09a5/ErrorX-6ea28ade4ba2d4a1a4618ff8bed714b3b4a067d05186ca98e29306079e118a11.xcframework.zip",
            checksum: "6ea28ade4ba2d4a1a4618ff8bed714b3b4a067d05186ca98e29306079e118a11"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-94c09a5/Diagnostics-72de9ef4d1ec6336caf59e9a3e278d0e11fc00626b7c6b5056ff7dc2f881305e.xcframework.zip",
            checksum: "72de9ef4d1ec6336caf59e9a3e278d0e11fc00626b7c6b5056ff7dc2f881305e"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-94c09a5/FoundationX-b020ecfe980e3c5da29b17786a629c69dbbfb7bbbe27a2dacf5b7240ae640f31.xcframework.zip",
            checksum: "b020ecfe980e3c5da29b17786a629c69dbbfb7bbbe27a2dacf5b7240ae640f31"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-94c09a5/POSIX-3bdcfe74267af380ea4fd9861ec3f4f7d44ef4f669196a4603ba4d4e244a8236.xcframework.zip",
            checksum: "3bdcfe74267af380ea4fd9861ec3f4f7d44ef4f669196a4603ba4d4e244a8236"
        ),
        .target(
            name: "_RuntimeC_Aggregation",
            dependencies: ["_RuntimeC"]
        ),
        .binaryTarget(
            name: "_RuntimeC",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-94c09a5/_RuntimeC-2295385a8071088b0ada1514314449736dd77ee8b0fcb1fdc25471fe51a328c1.xcframework.zip",
            checksum: "2295385a8071088b0ada1514314449736dd77ee8b0fcb1fdc25471fe51a328c1"
        ),
        .target(
            name: "_RuntimeKeyPath_Aggregation",
            dependencies: ["_RuntimeKeyPath", "Swallow_Aggregation"]
        ),
        .binaryTarget(
            name: "_RuntimeKeyPath",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-94c09a5/_RuntimeKeyPath-0157c6554115d90f413251067487ad94676227ca3d240478085032df67b798ad.xcframework.zip",
            checksum: "0157c6554115d90f413251067487ad94676227ca3d240478085032df67b798ad"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-94c09a5/Runtime-be66cd3f71eb238299afd41bbee294b491f5f44c99b960316e1634d6937e4046.xcframework.zip",
            checksum: "be66cd3f71eb238299afd41bbee294b491f5f44c99b960316e1634d6937e4046"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-94c09a5/SwallowMacrosClient-fcd40a4ff5bd9b4f5437a1add77c1c6db90eb89b1fcc15786fee91b77eaf7bbb.xcframework.zip",
            checksum: "fcd40a4ff5bd9b4f5437a1add77c1c6db90eb89b1fcc15786fee91b77eaf7bbb"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-94c09a5/MacroBuilder-feda65f7c893bb639a518fbf4c9ccc642a452809771089fbf2c6340951dd9bb7.xcframework.zip",
            checksum: "feda65f7c893bb639a518fbf4c9ccc642a452809771089fbf2c6340951dd9bb7"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-94c09a5/SwiftSyntaxUtilities-dc099e469d66b1baabf0e4a476b978d8ef549041eafe4cafd39d295f27998de1.xcframework.zip",
            checksum: "dc099e469d66b1baabf0e4a476b978d8ef549041eafe4cafd39d295f27998de1"
        )
    ]
)