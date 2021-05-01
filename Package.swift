// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
#if os(iOS)
let package = Package(
    name: "MyLocalLibrary",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MyLocalLibrary",
            targets: ["MyLocalLibrary"]),
    ],
    
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(name: "RambaHamba", url: "https://github.com/obozhdi/rambahamba.git", Package.Dependency.Requirement.branch("master"))

    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MyLocalLibrary",
            dependencies: ["RambaHamba"]),
        .testTarget(
            name: "MyLocalLibraryTests",
            dependencies: ["MyLocalLibrary"]),
    ]
)
#else
let package = Package(
    name: "MyLocalLibrary",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MyLocalLibrary",
            targets: ["MyLocalLibrary"]),
    ],
    
    dependencies: [
        // Dependencies declare other packages that this package depends on.
//        .package(name: "RambaHamba", url: "https://github.com/obozhdi/rambahamba.git", Package.Dependency.Requirement.branch("master"))

    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MyLocalLibrary",
            dependencies: []),
        .testTarget(
            name: "MyLocalLibraryTests",
            dependencies: ["MyLocalLibrary"]),
    ]
)
#endif
