import XCTest
@testable import MathExtension

final class MathExtensionTests: XCTestCase {
    
    func testInt64() {
        XCTAssertEqual(Int64.min, Int64(forOrder: UInt64.min))
        XCTAssertEqual(Int64.max, Int64(forOrder: UInt64.max))
        XCTAssertEqual(Int64.max - 1, Int64(forOrder: UInt64.max - 1))
        XCTAssertEqual(Int64.min + Int64.max, Int64(forOrder: UInt64(Int64.max)))
        XCTAssertEqual(Int64.min + Int64.max, Int64(forOrder: UInt64(Int64.max)))
        XCTAssertEqual(Int64.min + Int64.max + 1, Int64(forOrder: UInt64(Int64.max) + 1))
    }

    static var allTests = [
        ("testInt64", testInt64),
    ]
}
