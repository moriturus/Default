# Default

[![Swift Package Manager compatible](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-brightgreen.svg)](https://github.com/apple/swift-package-manager)
[![codecov](https://codecov.io/gh/moriturus/Default/branch/main/graph/badge.svg?token=5MAVW82D5I)](https://codecov.io/gh/moriturus/Default)

`Default` is a simple protocol and implementations to provide the default value.

## Installation

Please use the `Swift Package Manager`.

```swift
dependencies: [
    .package(url: "https://github.com/moriturus/Default.git", .upToNextMajor(from: "1.0.0"))
]
```

## Usage

```swift
import Default

// the default value is `0`.
let x = Int.default

// Of course you can use the protocol to confirm your structure or class.
struct Foo: Default {
    static let `default`: Foo = Foo(x: 0)
    var x: Int
}
let foo = Foo.default
```

## Implemented Types

- `Int` `-> 0`
- `Int8` `-> 0`
- `Int16` `-> 0`
- `Int32` `-> 0`
- `Int64` `-> 0`
- `UInt` `-> 0`
- `UInt8` `-> 0`
- `UInt16` `-> 0`
- `UInt32` `-> 0`
- `UInt64` `-> 0`
- `Float` `-> 0.0`
- `Double` `-> 0.0`
- `Float80` `-> 0.0`
- `Bool` -> `false`
- `String` -> `""`
- `Data` -> `Data()`
    - This means it is an empty data.
- `Date` -> `Date(timeIntervalSince1970: 0)`
    - This means it is the [UNIX Epoch Time](https://en.wikipedia.org/wiki/Unix_time)
- `Array` -> `[]`
- `Dictionary` -> `[:]`
- `Optional` -> `nil`

## License

This software is released under the MIT License.  
See LICENSE file for details.
