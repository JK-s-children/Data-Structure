var array = [41, 34, 6, 16, 38, 36, 28] 

func sortQuick(_ array: [Int]) -> [Int] {
    guard let pivot = array.first,
        array.count > 1 else { return array }

    let leftArray = array.filter { $0 < pivot }
    let rightArray = array.filter { $0 > pivot }

    return sortQuick(leftArray) + [pivot] + sortQuick(rightArray)
}

print(array)
array = sortQuick(array)
print(array)