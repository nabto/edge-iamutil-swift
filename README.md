# Nabto Edge IAM Util for iOS / Swift

This utility component simplifies user pairing and management through the IAM API on Nabto Edge embedded devices. Distributed as a Swift Package; it builds on top of the [Nabto Edge Client SDK wrapper](https://github.com/nabto/edge-client-swift).

Supports iOS 13+.

## Installation

### Xcode

`File` → `Add Package Dependencies…` and enter:

```
https://github.com/nabto/edge-iamutil-swift
```

Add the `NabtoEdgeIamUtil` library product to your target.

### Package.swift

```swift
dependencies: [
    .package(url: "https://github.com/nabto/edge-iamutil-swift", from: "2.0.0")
],
targets: [
    .target(
        name: "YourTarget",
        dependencies: [
            .product(name: "NabtoEdgeIamUtil", package: "edge-iamutil-swift")
        ]
    )
]
```

## Usage

See the [documentation](https://docs.nabto.com/developer/api-reference/ios-sdk/iam-util/IamUtil.html) to learn how to use the IAM Util to simplify pairing and user management.

Also see the [general intro](https://docs.nabto.com/developer/guides/concepts/iam/intro.html) to Nabto Edge IAM.

## Development of the wrapper

```sh
git clone git@github.com:nabto/edge-iamutil-swift.git
cd edge-iamutil-swift
swift build
```

Or open `Package.swift` directly in Xcode:

```sh
open Package.swift
```

## Running tests

The tests run against Nabto-hosted test devices:

```sh
swift test
```

This is what CI runs (see `.github/workflows/ci.yml`).
