extension Array where Element == Int {
    mutating func Sort(_ type: SortingType) {
        switch type {
        case .selection:
            self.SelectionSort()
        case .bubble:
            self.BubbleSort()
        case .insertion:
            self.InsertionSort()
        case .merge:
            self.MergeSort()
        case .quick:
            self.QuickSort()
        case .heap:
            self.HeapSort()
        }
    }

    internal mutating func swap(_ from: Int, _ to: Int) {
        let temp = self[from]
        self[from] = self[to]
        self[to] = temp
    }
}
