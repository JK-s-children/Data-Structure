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
  var front: T? { get }
  
  mutating func enqueue(_ element: T)
  mutating func dequeue() -> T?
}

// MARK: - Data Structure
struct Queue<T>: QueueADT {
  private var elements: [T] = []
  
  var count: Int { elements.count }
  var isEmpty: Bool { elements.isEmpty }
  var front: T? { elements.first }
}

// MARK: - Methods
extension Queue {
  /// O(1)
  mutating func enqueue(_ element: T) {
    elements.append(element)
  }

  /// O(1)
  mutating func dequeue() -> T? {
    guard !elements.isEmpty else { return nil }
    let newElements = elements.dropFirst()

    defer { elements = Array(newElements) }

    return elements[0]
  }
}
