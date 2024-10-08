// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterCAMEL_PARSER_NAME",
    products: [
        .library(name: "TreeSitterCAMEL_PARSER_NAME", targets: ["TreeSitterCAMEL_PARSER_NAME"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ChimeHQ/SwiftTreeSitter", from: "0.8.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterCAMEL_PARSER_NAME",
            dependencies: [],
            path: ".",
            sources: [
                "src/parser.c",
                // NOTE: if your language has an external scanner, add it here.
            ],
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterCAMEL_PARSER_NAMETests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterCAMEL_PARSER_NAME",
            ],
            path: "bindings/swift/TreeSitterCAMEL_PARSER_NAMETests"
        )
    ],
    cLanguageStandard: .c11
)
