extension Array where Element == Int {
    mutating func Sort(_ type: SortingType) {
        switch type {
        case .selection:
            self.SelectionSort()
        case .bubble:
            self.BubbleSort()
        }
    }

    internal mutating func swap(_ from: Int, _ to: Int) {
        let temp = self[from]
        self[from] = self[to]
        self[to] = temp
    }
}
