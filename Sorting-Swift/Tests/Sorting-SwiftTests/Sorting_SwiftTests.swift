import XCTest
@testable import Sorting_Swift

final class Sorting_SwiftTests: XCTestCase {
    func testSelectionSort() throws {
        var actual: [Int] = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
        actual.Sort(.selection)
        let expected: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

        XCTAssertEqual(actual, expected, "Selection Sort")
    }
    
    func testBubbleSort() throws {
        var actual: [Int] = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
        actual.Sort(.bubble)
        let expected: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

        XCTAssertEqual(actual, expected, "Bubble Sort")
    }
    
    func testInsertionSort() throws {
        var actual: [Int] = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
        actual.Sort(.insertion)
        let expected: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

        XCTAssertEqual(actual, expected, "Insertion Sort")
    }
}
