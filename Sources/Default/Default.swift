// Copyright (c) 2022 Henrique Sasaki Yuya
// This software is released under the MIT License.
// See LICENSE file for details.

import Foundation

// MARK: - Default

/// ``Default/Default`` protocol requires a static read-only property ``Default/Default/default-129ko``.
public protocol Default {
    /// ``Default/Default/default-129ko`` should return some kind of initial value, identity value, or anything else that may make sense as a default.
    ///
    /// ## Implemented Types
    /// - `Int` `-> 0`
    /// - `Int8` `-> 0`
    /// - `Int16` `-> 0`
    /// - `Int32` `-> 0`
    /// - `Int64` `-> 0`
    /// - `UInt` `-> 0`
    /// - `UInt8` `-> 0`
    /// - `UInt16` `-> 0`
    /// - `UInt32` `-> 0`
    /// - `UInt64` `-> 0`
    /// - `Float` `-> 0.0`
    /// - `Double` `-> 0.0`
    /// - `Float80` `-> 0.0`
    /// - `Bool` -> `false`
    /// - `String` -> `""`
    /// - `Data` -> `Data()`
    ///     - This means it is an empty data.
    /// - `Date` -> `Date(timeIntervalSince1970: 0)`
    ///     - This means it is the [UNIX Epoch Time](https://en.wikipedia.org/wiki/Unix_time)
    /// - `Array` -> `[]`
    /// - `Dictionary` -> `[:]`
    /// - `Optional` -> `nil`
    static var `default`: Self { get }
}

extension Default where Self: Numeric {
    public static var `default`: Self {
        0
    }
}

// MARK: - Int + Default

extension Int: Default {
    // no implementation
}

// MARK: - Int8 + Default

extension Int8: Default {
    // no implementation
}

// MARK: - Int16 + Default

extension Int16: Default {
    // no implementation
}

// MARK: - Int32 + Default

extension Int32: Default {
    // no implementation
}

// MARK: - Int64 + Default

extension Int64: Default {
    // no implementation
}

// MARK: - UInt + Default

extension UInt: Default {
    // no implementation
}

// MARK: - UInt8 + Default

extension UInt8: Default {
    // no implementation
}

// MARK: - UInt16 + Default

extension UInt16: Default {
    // no implementation
}

// MARK: - UInt32 + Default

extension UInt32: Default {
    // no implementation
}

// MARK: - UInt64 + Default

extension UInt64: Default {
    // no implementation
}

// MARK: - Float + Default

extension Float: Default {
    // no implementation
}

// MARK: - Double + Default

extension Double: Default {
    // no implementation
}

// MARK: - Float80 + Default

extension Float80: Default {
    // no implementation
}

// MARK: - Bool + Default

extension Bool: Default {
    public static let `default`: Bool = false
}

// MARK: - String + Default

extension String: Default {
    public static let `default`: String = ""
}

// MARK: - Data + Default

extension Data: Default {
    public static let `default`: Data = .init()
}

// MARK: - Date + Default

extension Date: Default {
    public static let `default`: Date = .init(timeIntervalSince1970: 0)
}

// MARK: - Array + Default

extension Array: Default {
    public static var `default`: Self {
        []
    }
}

// MARK: - Dictionary + Default

extension Dictionary: Default {
    public static var `default`: Self {
        [:]
    }
}

extension Optional: Default {
    public static var `default`: Self {
        nil
    }
}
