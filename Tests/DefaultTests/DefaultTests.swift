// Copyright (c) 2022 Henrique Sasaki Yuya
// This software is released under the MIT License.
// See LICENSE file for details.

import XCTest
@testable import Default

final class DefaultTests: XCTestCase {
    private func testNumeric<T>(_ _type: T.Type) where T: Numeric, T: Default {
        let x = T.default
        XCTAssertEqual(x, 0)
    }
    
    func testInt() {
        self.testNumeric(Int.self)
    }
    
    func testInt8() {
        self.testNumeric(Int8.self)
    }
    
    func testInt16() {
        self.testNumeric(Int16.self)
    }
    
    func testInt32() {
        self.testNumeric(Int32.self)
    }
    
    func testInt64() {
        self.testNumeric(Int64.self)
    }
    
    func testUInt() {
        self.testNumeric(UInt.self)
    }
    
    func testUInt8() {
        self.testNumeric(UInt8.self)
    }
    
    func testUInt16() {
        self.testNumeric(UInt16.self)
    }
    
    func testUInt32() {
        self.testNumeric(UInt32.self)
    }
    
    func testUInt64() {
        self.testNumeric(UInt64.self)
    }
    
    func testFloat() {
        self.testNumeric(Float.self)
    }
    
    func testDouble() {
        self.testNumeric(Double.self)
    }
    
    func testFloat80() {
        self.testNumeric(Float80.self)
    }
    
    func testBool() {
        let x = Bool.default
        XCTAssertEqual(x, false)
    }
    
    func testString() {
        let x = String.default
        XCTAssertEqual(x, "")
    }
    
    func testData() {
        let x = Data.default
        XCTAssertEqual(x, .init())
    }
    
    func testDate() {
        let x = Date.default
        XCTAssertEqual(x, .init(timeIntervalSince1970: 0))
    }
    
    func testArray() {
        let x = Array<Int>.default
        XCTAssertEqual(x, [])
    }
    
    func testDictionary() {
        let x = Dictionary<String, Int>.default
        XCTAssertEqual(x, [:])
    }
    
    func testOptional() {
        let x = Optional<Int>.default
        XCTAssertEqual(x, nil)
    }
}
