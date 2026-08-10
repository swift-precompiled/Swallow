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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/_SwiftRuntimeExports-8e98a2e13494740f18c1e2f99bc7f35a428f1f7d9b718ab724a9fb8d82c95c91.xcframework.zip",
            checksum: "8e98a2e13494740f18c1e2f99bc7f35a428f1f7d9b718ab724a9fb8d82c95c91"
        ),
        .target(
            name: "_PythonString_Aggregation",
            dependencies: ["_PythonString"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_PythonString",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/_PythonString-b3949b5a462c64dd058ae7c61afdd530211fe69cbd5a57c8aad9a4e10f0f6f5c.xcframework.zip",
            checksum: "b3949b5a462c64dd058ae7c61afdd530211fe69cbd5a57c8aad9a4e10f0f6f5c"
        ),
        .target(
            name: "_SwallowSwiftOverlay_Aggregation",
            dependencies: ["_SwallowSwiftOverlay"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_SwallowSwiftOverlay",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/_SwallowSwiftOverlay-070ca205a99bfae89d61328f49e8061f7852a0154dbdcb2c414e27549e4f9c8a.xcframework.zip",
            checksum: "070ca205a99bfae89d61328f49e8061f7852a0154dbdcb2c414e27549e4f9c8a"
        ),
        .target(
            name: "LoremIpsum_Aggregation",
            dependencies: ["LoremIpsum"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "LoremIpsum",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/LoremIpsum-a4474ac407f8fd8dc5b5931aa2a33d0d29fbb41d12e7b17a383bd720d27f8d3d.xcframework.zip",
            checksum: "a4474ac407f8fd8dc5b5931aa2a33d0d29fbb41d12e7b17a383bd720d27f8d3d"
        ),
        .target(
            name: "SE0270_RangeSet_Aggregation",
            dependencies: ["SE0270_RangeSet"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SE0270_RangeSet",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/SE0270_RangeSet-419a36f483b4c16877a8602d81e192575bf61f6a54e4ba3427d72b1df48d8509.xcframework.zip",
            checksum: "419a36f483b4c16877a8602d81e192575bf61f6a54e4ba3427d72b1df48d8509"
        ),
        .target(
            name: "Swallow_Aggregation",
            dependencies: ["Swallow"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Swallow",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/Swallow-cd1afbd96bd9f61e5b8a010dd8233c086a7b68ba5b26d7e05142dc4e3b9b5b44.xcframework.zip",
            checksum: "cd1afbd96bd9f61e5b8a010dd8233c086a7b68ba5b26d7e05142dc4e3b9b5b44"
        ),
        .target(
            name: "Compute_Aggregation",
            dependencies: ["Compute"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Compute",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/Compute-f234108512d1adfb0f84d97662ee5764a16b77c770d8a3f69f2f10f89b8dc00d.xcframework.zip",
            checksum: "f234108512d1adfb0f84d97662ee5764a16b77c770d8a3f69f2f10f89b8dc00d"
        ),
        .target(
            name: "CoreModel_Aggregation",
            dependencies: ["CoreModel"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "CoreModel",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/CoreModel-9ba2c7d7b1e518ed1d268129fdc5b64c8ed3598da79db89950b5438ac888d222.xcframework.zip",
            checksum: "9ba2c7d7b1e518ed1d268129fdc5b64c8ed3598da79db89950b5438ac888d222"
        ),
        .target(
            name: "ErrorX_Aggregation",
            dependencies: ["ErrorX"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "ErrorX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/ErrorX-413e0bedeb2acbccec739ee991719ab20cba7e58025ba2d60bf2f44f422ffb86.xcframework.zip",
            checksum: "413e0bedeb2acbccec739ee991719ab20cba7e58025ba2d60bf2f44f422ffb86"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/Diagnostics-8387d1a05085c9ebf6f20379abcdf71f24267129c3b782f2fc3816cbb65d3414.xcframework.zip",
            checksum: "8387d1a05085c9ebf6f20379abcdf71f24267129c3b782f2fc3816cbb65d3414"
        ),
        .target(
            name: "FoundationX_Aggregation",
            dependencies: ["FoundationX"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "FoundationX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/FoundationX-ea350a092219e81ecda469eddd7518989d31c790dedd2b13f55baf49b30f9029.xcframework.zip",
            checksum: "ea350a092219e81ecda469eddd7518989d31c790dedd2b13f55baf49b30f9029"
        ),
        .target(
            name: "POSIX_Aggregation",
            dependencies: ["POSIX"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "POSIX",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/POSIX-b06e81075c65c2d3a053ac47337f6b6a72dcdbac217cd8b91176668f7b83f529.xcframework.zip",
            checksum: "b06e81075c65c2d3a053ac47337f6b6a72dcdbac217cd8b91176668f7b83f529"
        ),
        .binaryTarget(
            name: "_RuntimeC",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/_RuntimeC-c858e7dac30b1fe3544c6cf17623da7ecf61da555298fa1af376ecd281da9ff6.xcframework.zip",
            checksum: "c858e7dac30b1fe3544c6cf17623da7ecf61da555298fa1af376ecd281da9ff6"
        ),
        .target(
            name: "_RuntimeKeyPath_Aggregation",
            dependencies: ["_RuntimeKeyPath"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_RuntimeKeyPath",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/_RuntimeKeyPath-d3edabf42ee920c710eb0bd34905a3dbc7941fc257a8fd230171bf64cb860481.xcframework.zip",
            checksum: "d3edabf42ee920c710eb0bd34905a3dbc7941fc257a8fd230171bf64cb860481"
        ),
        .target(
            name: "Runtime_Aggregation",
            dependencies: ["Runtime"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Runtime",
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/Runtime-a568798846ce55933332ca801670e9ff62b6db3c92d74bee4f23f5a2f21f08a4.xcframework.zip",
            checksum: "a568798846ce55933332ca801670e9ff62b6db3c92d74bee4f23f5a2f21f08a4"
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
            url: "https://github.com/swift-precompiled/Swallow/releases/download/master-2b057695c770569dee668cc6fca1dd270c8b49c1/SwallowMacrosClient-c67047b143c7e2c57c1fa83f04ff5fbebbd4aef88c74368c25fa7302532e8b76.xcframework.zip",
            checksum: "c67047b143c7e2c57c1fa83f04ff5fbebbd4aef88c74368c25fa7302532e8b76"
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
        )
    ]
)