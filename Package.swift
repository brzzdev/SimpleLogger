// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "SimpleLogger",
	platforms: [
		.iOS(.v13),
		.macOS(.v11),
		.tvOS(.v13),
		.watchOS(.v6),
	],
	products: [
		.library(
			name: "SimpleLogger",
			targets: ["SimpleLogger"]
		),
	],
	dependencies: [
		.package(
			url: "https://github.com/pointfreeco/swift-dependencies.git",
			from: "1.0.0"
		),
		.package(url: "https://github.com/apple/swift-log.git", from: "1.0.0"),
	],
	targets: [
		.target(
			name: "SimpleLogger",
			dependencies: [
				.product(name: "Dependencies", package: "swift-dependencies"),
				.product(name: "Logging", package: "swift-log"),
			]
		),
		.testTarget(
			name: "SimpleLoggerTests",
			dependencies: ["SimpleLogger"]
		),
	]
)
