import XCTest
@testable import Sorting_Swift

final class Sorting_SwiftTests: XCTestCase {
    func testSelectionSort() throws {
        var actual: [Int] = [5, 3, 9, 4, 2, 7, 10, 6, 1, 8]
        actual.Sort(.selection)
        let expected: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

        XCTAssertEqual(actual, expected, "Selection Sort")
    }
    
    func testBubbleSort() throws {
        var actual: [Int] = [5, 3, 9, 4, 2, 7, 10, 6, 1, 8]
        actual.Sort(.bubble)
        let expected: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

        XCTAssertEqual(actual, expected, "Bubble Sort")
    }
    
    func testInsertionSort() throws {
        var actual: [Int] = [5, 3, 9, 4, 2, 7, 10, 6, 1, 8]
        actual.Sort(.insertion)
        let expected: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

        XCTAssertEqual(actual, expected, "Insertion Sort")
    }
    
    func testMergeSort() throws {
        var actual: [Int] = [5, 3, 9, 4, 2, 7, 10, 6, 1, 8]
        actual.Sort(.merge)
        let expected: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

        XCTAssertEqual(actual, expected, "Merge Sort")
    }
    
    func testQuickSort() throws {
        var actual: [Int] = [5, 3, 9, 4, 2, 7, 10, 6, 1, 8]
        actual.Sort(.quick)
        let expected: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

        XCTAssertEqual(actual, expected, "Quick Sort")
    }
}
