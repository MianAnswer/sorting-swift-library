import Foundation

extension Array where Element == Int {
    internal mutating func RadixSort() {
        var max = findMax(arr: self)
        var digit = 1

        while max > 0 {
            countSort(arr: &self, digit: digit)
            max /= 10
            digit += 1
        }
    }
}

fileprivate func countSort(arr: inout [Int], digit: Int) {
    let count = arr.count
    var result = [Int](repeating: 0, count: count)

    // find maximum value
    let maxValue = findMax(arr: arr, digit: digit)
    
    // create counting array that will have it's indecies from 0 to maxValue
    var countingArray = [Int](repeating: 0, count: maxValue + 1)
    
    // update value
    for i in 0..<count {
        let currentValue = (arr[i] / pow(10, digit - 1)) % 10
        countingArray[currentValue] += 1
    }
    
    for i in 1..<countingArray.count {
        countingArray[i] += countingArray[i - 1]
    }

    for i in stride(from: count - 1, through: 0, by: -1) {
        let currentValue = (arr[i] / pow(10, digit - 1)) % 10
        let index = countingArray[currentValue] - 1
        
        result[index] = arr[i]
        
        countingArray[currentValue] -= 1
    }

    arr = result
}

fileprivate func findMax(arr: [Int], digit: Int? = nil) -> Int {
    var max = Int.min
    for i in 0..<arr.count {
        if let digit = digit {
            let currentDigit = (arr[i] / pow(10, digit - 1)) % 10
            if max < currentDigit {
                max = currentDigit
            }
        } else {
            if max < arr[i] {
                max = arr[i]
            }
        }
    }
    
    return max
}

fileprivate func pow(_ base: Int, _ power: Int) -> Int {
    var result = 1
    for _ in 0..<power {
        result *= base
    }
    
    return result
}
