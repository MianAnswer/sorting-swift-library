extension Array where Element == Int {
    internal mutating func SelectionSort() {
        let count = self.count
        for i in 0..<count {
            var smallestIndex = i
            var smallestNum = self[i]
            for j in i..<count {
                if smallestNum > self[j] {
                    smallestNum = self[j]
                    smallestIndex = j
                }
            }

            self.swap(i, smallestIndex)
        }
    }
}
