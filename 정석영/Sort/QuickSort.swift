//
//  QuickSort.swift
//  Data-Structure
//
//  Created by jung on 01/06/25.
//

extension Array where Element: Comparable {
  enum PivotType {
    case random
    case first
    case middle // 랜덤으로 선택된 3개의 값들 중 중앙값
  }
  
  func quickSort(
    sortedBy: (Element, Element) -> Bool
  ) -> [Element] {
    guard
      self.count > 1,
      let pivot = self.pivot(.random)
    else { return self }
    
    let left = self.filter { sortedBy($0, pivot) }
    var right = self.filter { !sortedBy($0, pivot) }
    if let firstIndex = right.firstIndex(of: pivot) {
      right.remove(at: firstIndex)
    }
    
    
    let sortedLeft = left.quickSort(sortedBy: sortedBy)
    let sortedRight = right.quickSort(sortedBy: sortedBy)
    
    return sortedLeft + [pivot] + sortedRight
  }
}

private extension Array where Element: Comparable {
  func pivot(_ type: PivotType) -> Element? {
    switch type {
      case .first:
        return self.first
        
      case .random:
        return self.randomElement()
        
      case .middle:
        if let randoms = self.randomElements(count: 3) {
          return randoms.sorted()[1]
        } else {
          return self.first
        }
    }
  }
  
  func randomElements(count: Int) -> [Element]? {
    guard self.count >= count else { return nil }
    
    var flags = Array<Bool>(repeating: false, count: self.count)
    var numbers = [Element]()
    
    while numbers.count != count {
      let randomIndex = Int.random(in: 0..<self.count)
      if !flags[randomIndex] {
        flags[randomIndex] = true
        numbers.append(self[randomIndex])
      }
    }
    
    return numbers
  }
}
