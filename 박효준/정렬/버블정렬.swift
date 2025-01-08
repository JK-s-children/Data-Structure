var array = [41, 34, 6, 16, 38, 36, 28]
var count = 0

func sortBubble() {
    for i in 0..<array.count - 1 {
        for j in 0..<array.count - i - 1 {
            if array[j] > array[j + 1] {
                count += 1
                array.swapAt(j, j + 1)
            }
        }
    }
}

print(array)
sortBubble()
print(array)
print("변경한 횟수: \(count)")