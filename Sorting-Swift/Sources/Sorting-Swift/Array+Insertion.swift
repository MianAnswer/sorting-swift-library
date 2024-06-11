extension Array where Element == Int {
    internal mutating func InsertionSort() {
        let count = self.count
        
        for i in 1..<count {
            let current = self[i]
            var j = i - 1
            var currentIndex = i
            while j >= 0, self[j] > current {
                self.swap(currentIndex, j)
                currentIndex = j
                j -= 1
            }
        }
    }
}
