extension Array where Element == Int {
    internal mutating func CountSort() {
        let count = self.count
        var result = [Int](repeating: 0, count: count)
        
        // find maximum value
        var maxValue = self[0]
        for i in 0..<count {
            maxValue = Swift.max(maxValue, self[i])
        }
        
        // create counting array that will have it's indecies from 0 to maxValue
        var countingArray = [Int](repeating: 0, count: maxValue + 1)
        
        // update value
        for i in 0..<count {
            let currentValue = self[i]
            countingArray[currentValue] += 1
        }

        for i in 1..<countingArray.count {
            countingArray[i] += countingArray[i - 1]
        }

        for i in stride(from: count - 1, through: 0, by: -1) {
            let currentValue = self[i]
            let index = countingArray[currentValue] - 1
            
            result[index] = currentValue
            
            countingArray[currentValue] -= 1
        }
        
        self = result
    }
}
