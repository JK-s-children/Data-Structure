//
//  DeQueue.swift
//  Data-Structure
//
//  Created by jung on 12/31/24.
//

// MARK: - ADT
protocol DeQueADT {
  associatedtype T
  
  var count: Int { get }
  var isEmpty: Bool { get }
  var top: T? { get }
  var bottom: T? { get }
  
  mutating func enqueueFront(_ element: T)
  mutating func enqueueBack(_ element: T)

  mutating func dequeueFront() -> T?
  mutating func dequeueBack() -> T?
}

struct Deque<T>: DeQueADT {
  private var elements = [T]()
  
  var count: Int { elements.count }
  var isEmpty: Bool { elements.isEmpty }
  var top: T? { elements.last }
  var bottom: T? { elements.first }
}

// MARK: - Methods
extension Deque {
  mutating func enqueueFront(_ element: T) {
    elements = [element] + elements
  }
  
  mutating func enqueueBack(_ element: T) {
    elements.append(element)
  }
  
  mutating func dequeueFront() -> T? {
    defer { elements.reverse() }
    
    elements.reverse()
    return dequeueBack()
  }
  
  mutating func dequeueBack() -> T? {
    return elements.popLast()
  }
}
