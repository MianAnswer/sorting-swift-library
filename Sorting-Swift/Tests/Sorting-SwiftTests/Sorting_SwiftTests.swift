import XCTest
@testable import Sorting_Swift

final class Sorting_SwiftTests: XCTestCase {
    func Sorting_Selection() throws {
        // XCTest Documentation
        // https://developer.apple.com/documentation/xctest

        // Defining Test Cases and Test Methods
        // https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods

        var actual: [Int] = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
        actual.Sort(.selection)
        let expected: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

        XCTAssertEqual(actual, expected)
    }
}
