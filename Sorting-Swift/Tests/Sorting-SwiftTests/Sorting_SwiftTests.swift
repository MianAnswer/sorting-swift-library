import XCTest
@testable import Sorting_Swift

final class Sorting_SwiftTests: XCTestCase {
    private let arrayToBeSorted: [Int] = [5, 3, 9, 4, 2, 7, 10, 6, 1, 8, 2]
    private let expected: [Int] = [1, 2, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    private var actual: [Int] = []
    
    override func setUp() {
        actual = arrayToBeSorted
    }
    
    func testSelectionSort() throws {
        actual.Sort(.selection)
        XCTAssertEqual(actual, expected, "Selection Sort")
    }
    
    func testBubbleSort() throws {
        actual.Sort(.bubble)
        XCTAssertEqual(actual, expected, "Bubble Sort")
    }
    
    func testInsertionSort() throws {
        actual.Sort(.insertion)
        XCTAssertEqual(actual, expected, "Insertion Sort")
    }
    
    func testMergeSort() throws {
        actual.Sort(.merge)
        XCTAssertEqual(actual, expected, "Merge Sort")
    }
    
    func testQuickSort() throws {
        actual.Sort(.quick)
        XCTAssertEqual(actual, expected, "Quick Sort")
    }
    
    func testHeapSort() throws {
        actual.Sort(.heap)
        XCTAssertEqual(actual, expected, "Heap Sort")
    }
    
    func testCountSort() throws {
        actual.Sort(.count)
        XCTAssertEqual(actual, expected, "Count Sort")
    }
    
    func testRadixSort() throws {
        actual = [170, 45, 75, 90, 802, 24, 2, 66]
        actual.Sort(.radix)
        XCTAssertEqual(actual, [2, 24, 45, 66, 75, 90, 170, 802], "Radix Sort")
    }
}
