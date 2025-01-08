var array = [41, 34, 6, 16, 38, 36, 28]
var count = 0

func sortInsertion() {
    for stand in 1..<array.count {
        for currentIndex in stride(from: stand, to: 0, by: -1) {
            if array[currentIndex] < array[currentIndex - 1] {
                count += 1
                array.swapAt(currentIndex, currentIndex - 1)
            }
        }
    }
}

print(array)
sortInsertion()
print(array)
print("변경한 횟수: \(count)")