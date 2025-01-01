//
//  Queue.swift
//  Data-Structure
//
//  Created by jung on 12/31/24.
//

// MARK: - ADT
protocol QueueADT {
  associatedtype T
  
  var count: Int { get }
  var isEmpty: Bool { get }
  var top: T? { get }
  
  mutating func enqueue(_ element: T)
  mutating func dequeue() -> T?
}

// MARK: - Data Structure
struct Queue<T>: QueueADT {
  private var elements: [T] = []
  private var head: Int = 0
  
  var count: Int { elements.count - head }
  var isEmpty: Bool { head == elements.count }
  var top: T? { elements.last }
}

// MARK: - Methods
extension Queue {
  /// O(1)
  mutating func enqueue(_ element: T) {
    elements.append(element)
  }

  /// O(1)
  mutating func dequeue() -> T? {
    defer { elements.reverse() }
    elements.reverse()

    return elements.popLast()
  }
}
