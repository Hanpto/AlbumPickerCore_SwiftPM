// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "AlbumPickerCore",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "AlbumPickerCore",
                 targets: ["AlbumPickerCoreBinary", "AlbumPickerCoreDeps"])
    ],
    dependencies: [
        .package(url: "https://github.com/Tencent-RTC/Chat_SDK_SwiftPM.git", from: "9.0.7652")
    ],
    targets: [
        .binaryTarget(
            name: "AlbumPickerCoreBinary",
            url: "https://sdk-liteav-1252463788.cos.ap-hongkong.myqcloud.com/app/tuikit/download/release/1.0/AlbumPickerCore_1.0.8.zip",
            checksum: "efc6df223819804e128d7bb3483e9e7560331ab9fddbe7e7307776af780b9c96"
        ),
        .target(
            name: "AlbumPickerCoreDeps",
            dependencies: [
                .product(name: "Chat_SDK_SwiftPM", package: "Chat_SDK_SwiftPM")
            ],
            path: "Sources/Deps"
        )
    ]
)
