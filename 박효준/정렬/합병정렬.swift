var array = [41, 34, 6, 16, 38, 36, 28]

func sortMerge(_ array: [Int]) -> [Int] {
    guard array.count > 1 else { return array }

    let center = array.count / 2
    let leftArray = Array(array[0..<center])
    let rightArray = Array(array[center..<array.count])

    func merge(_ leftArray: [Int], _ rightArray: [Int]) -> [Int] {
        var leftArray = leftArray
        var rightArray = rightArray
        var resultArray = [Int]()

        while !leftArray.isEmpty && !rightArray.isEmpty {
            if leftArray[0] < rightArray[0] {
                resultArray.append(leftArray.removeFirst())
            } else {
                resultArray.append(rightArray.removeFirst())
            }
        }

        if !leftArray.isEmpty {
            resultArray.append(contentsOf: leftArray)
        }

        if !rightArray.isEmpty {
            resultArray.append(contentsOf: rightArray)
        }

        return resultArray
    }

    return merge(sortMerge(leftArray), sortMerge(rightArray))
}


print(array)
array = sortMerge(array)
print(array)