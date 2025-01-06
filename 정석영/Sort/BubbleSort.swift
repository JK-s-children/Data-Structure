//
//  BubbleSort.swift
//  Data-Structure
//
//  Created by jung on 01/06/25.
//

extension Array where Element: Comparable {
  func bubbleSort(
    sortedBy: (Element, Element) -> Bool = { $0 < $1 }
  ) -> [Element] {
    var sortedArray = self
    
    for i in (0..<self.count) {
      var isChanged = false
      
      for j in (0..<self.count-i-1) {
        if !sortedBy(sortedArray[j], sortedArray[j + 1]) {
          sortedArray.swapAt(j, j + 1)
          isChanged = true
        }
      }
      
      if !isChanged { break }
    }
    
    return sortedArray
  }
}
