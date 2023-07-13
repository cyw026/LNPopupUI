// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "LNPopupUI",
	platforms: [
		.iOS(.v13),
		.macOS(.v10_15)
	],
    products: [
        .library(
            name: "LNPopupUI",
			type: .dynamic,
            targets: ["LNPopupUI"]),
		.library(
			name: "LNPopupUI-Static",
			type: .static,
			targets: ["LNPopupUI"]),
    ],
    dependencies: [
//		.package(path: "../LNPopupController")
		.package(url: "https://github.com/cyw026/LNPopupController.git", from: Version(stringLiteral: "2.14.9"))
    ],
    targets: [
        .target(
            name: "LNPopupUI",
			dependencies: [
				.product(name: "LNPopupController-Static", package: "LNPopupController")
			])
    ]
)
