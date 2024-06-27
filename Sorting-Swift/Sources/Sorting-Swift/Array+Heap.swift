internal extension Array where Element == Int {
    mutating func HeapSort() {
        let count = self.count
        // heapify
        for i in 1..<count {
            var currentIndex = i
            var parentIndex = (i - 1) / 2
            while parentIndex != currentIndex, self[parentIndex] < self[currentIndex] {
                swap(parentIndex, currentIndex)
                currentIndex = parentIndex
                parentIndex = (parentIndex - 1) / 2
            }
        }
        
        for i in 0..<count {
            var left = 0
            var right = count - 1 - i
            swap(left, right)
            
            var current = 0
            left = 1
            right = 2
            let bound = count - 1 - i
            
            while current < bound {
                left = (2 * current) + 1
                right = left + 1
                
                if left < bound, right < bound {
                    if self[left] > self[right], self[current] < self[left] {
                        swap(left, current)
                        current = left
                    } else if self[current] < self[right] {
                        swap(right, current)
                        current = right
                    } else {
                        break
                    }
                } else if left < bound, self[current] < self[left] {
                    swap(left, current)
                    current = left
                } else if right < bound, self[current] < self[right] {
                    swap(right, current)
                    current = right
                } else {
                    break
                }
            }
        }
    }
}
