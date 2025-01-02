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
  var front: T? { get }
  var back: T? { get }
  
  mutating func enqueueFront(_ element: T)
  mutating func enqueueBack(_ element: T)

  mutating func dequeueFront() -> T?
  mutating func dequeueBack() -> T?
}

struct Deque<T>: DeQueADT {
  private var elements = [T]()
  
  var count: Int { elements.count }
  var isEmpty: Bool { elements.isEmpty }
  var front: T? { elements.first }
  var back: T? { elements.last }
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
    guard !elements.isEmpty else { return nil }
    let newElements = elements.dropFirst()

    defer { elements = Array(newElements) }

    return elements[0]
  }
  
  mutating func dequeueBack() -> T? {
    return elements.popLast()
  }
}
