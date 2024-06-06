extension Array where Element == Int {
    internal mutating func BubbleSort() {
        let count = self.count
        var end = count - 1
        
        while end > 0 {
            var start = 0
            var swapped = false
            while start + 1 <= end {
                if self[start] > self[start + 1] {
                    self.swap(start, start + 1)
                    swapped = true
                }
                
                start += 1
            }
            
            if !swapped {
                return
            }
            
            end -= 1
        }
    }
}
