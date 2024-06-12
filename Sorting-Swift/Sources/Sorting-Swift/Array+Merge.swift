extension Array where Element == Int {
    internal mutating func MergeSort() {
        MergeSort(0, count - 1)
    }
    
    fileprivate mutating func MergeSort(_ start: Int, _ end: Int) {
        guard start < end else {
            return
        }
        
        let mid = (end + start) / 2
        
        MergeSort(start, mid)
        MergeSort(mid + 1, end)
        Merge(start, mid, end)
    }
    
    fileprivate mutating func Merge(_ start: Int, _ mid: Int, _ end: Int) {
        let leftCount = mid - start + 1
        let rightCount = end - mid
        var leftArray = [Element](repeating: 0, count: leftCount)
        var rightArray = [Element](repeating: 0, count: rightCount)

        for i in 0..<leftArray.count {
            leftArray[i] = self[start + i]
        }
        
        for i in 0..<rightArray.count {
            rightArray[i] = self[mid + i + 1]
        }
        
        var leftIndex = 0
        var rightIndex = 0
        var index = start
        while index <= end, rightIndex < rightCount, leftIndex < leftCount {
            if leftArray[leftIndex] < rightArray[rightIndex] {
                self[index] = leftArray[leftIndex]
                leftIndex += 1
            } else {
                self[index] = rightArray[rightIndex]
                rightIndex += 1
            }

            index += 1
        }
        
        while leftIndex < leftCount {
            self[index] = leftArray[leftIndex]
            leftIndex += 1
            index += 1
        }
        
        while rightIndex < rightCount {
            self[index] = rightArray[rightIndex]
            rightIndex += 1
            index += 1
        }
    }
}
