//
//  MergeSort.swift
//  Data-Structure
//
//  Created by jung on 01/06/25.
//

extension Array where Element: Comparable {
  func mergeSort(
    sortedBy: (Element, Element) -> Bool = { $0 < $1 }
  ) -> [Element] {
    return mergeSort(self, st: 0, en: self.count, sortedBy: sortedBy)
  }
}

// MARK: - Private Methods
private extension Array where Element: Comparable {
  func mergeSort(
    _ array: [Element],
    st: Int,
    en: Int,
    sortedBy: (Element, Element) -> Bool
  ) -> [Element] {
    guard st < en - 1 else { return array }

    let mid = (st + en) / 2
    var array = array
    
    array = mergeSort(array, st: st, en: mid, sortedBy: sortedBy)
    array = mergeSort(array, st: mid, en: en, sortedBy: sortedBy)
    
    return merge(array, st: st, en: en, sortedBy: sortedBy)
  }
  
  func merge(
    _ array: [Element],
    st: Int,
    en: Int,
    sortedBy: (Element, Element) -> Bool
  ) -> [Element] {
    var array = array
    
    let mid = (st + en) / 2
    var index1 = st
    var index2 = mid
    
    var temp = [Element]()
    
    for _ in st..<en {
      if index1 == mid {
        temp.append(array[index2])
        index2 += 1
      } else if index2 == en {
        temp.append(array[index1])
        index1 += 1
      } else if sortedBy(array[index1], array[index2]) {
        temp.append(array[index1])
        index1 += 1
      } else {
        temp.append(array[index2])
        index2 += 1
      }
    }
    
    for i in 0..<temp.count {
      array[i + st] = temp[i]
    }
    
    return array
  }
}
