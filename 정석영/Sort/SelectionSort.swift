//
//  SelectionSort.swift
//  Data-Structure
//
//  Created by jung on 01/06/25.
//

extension Array where Element: Comparable {
  func selectionSort(
    sortedBy: (Element, Element) -> Bool = { $0 < $1 }
  ) -> [Element] {
    var sortedArray = self
    
    for i in 0..<self.count {
      
      var minIndex = i
      for j in i..<self.count {
        sortedBy(sortedArray[i], sortedArray[j]) ? () : (minIndex = j)
      }
      
      sortedArray.swapAt(i, minIndex)
    }
    
    return sortedArray
  }
}
