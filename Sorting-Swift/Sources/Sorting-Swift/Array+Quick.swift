internal extension Array where Element == Int {
    mutating func QuickSort() {
        QuickSort(0, count - 1)
    }
    
    fileprivate mutating func QuickSort(_ start: Int, _ end: Int) {
        guard start < end else {
            return
        }
        
        let partitionIndex = Partition(start, end)
        QuickSort(start, partitionIndex - 1)
        QuickSort(partitionIndex + 1, end)
    }
    
    fileprivate mutating func Partition(_ start: Int, _ end: Int) -> Int {
        let pivot = self[end]
        
        var left = start
        var right = start + 1
        
        while right < end {
            if self[left] <= pivot {
                left += 1
            } else if self[right] < pivot {
                swap(left, right)
                left += 1
            }

            right += 1
        }
        if self[left] > pivot {
            swap(left, end)
        }
        
        return left
    }
}
