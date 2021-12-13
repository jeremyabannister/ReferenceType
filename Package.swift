// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "ReferenceType",
    products: [
        .library(
            name: "ReferenceType",
            targets: ["ReferenceType"]
        ),
        .library(
            name: "ReferenceTypeTestToolkit",
            targets: ["ReferenceTypeTestToolkit"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/jeremyabannister/ProperValueType",
            from: "0.1.0"
        ),
    ],
    targets: [
        .target(
            name: "ReferenceType",
            dependencies: ["ProperValueType"]
        ),
        .target(
            name: "ReferenceTypeTestToolkit",
            dependencies: [
                "ReferenceType",
                .product(name: "ProperValueTypeTestToolkit", package: "ProperValueType")
            ]
        ),
        .testTarget(
            name: "ReferenceType-tests",
            dependencies: ["ReferenceTypeTestToolkit"]
        ),
        .testTarget(
            name: "ReferenceTypeTestToolkit-tests",
            dependencies: ["ReferenceTypeTestToolkit"]
        ),
    ]
)
