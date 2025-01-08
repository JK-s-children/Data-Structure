var array = [41, 34, 6, 16, 38, 36, 28]

func sortSelection() {
    for stand in 0..<array.count - 1 {
        var minIndex = stand
        for currentIndex in stand + 1..<array.count {
            if array[minIndex] > array[currentIndex] {
                minIndex = currentIndex
            }
        }
        array.swapAt(minIndex, stand)
    }
}

print(array)
sortSelection()
print(array)