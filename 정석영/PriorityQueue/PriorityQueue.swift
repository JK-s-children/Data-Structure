//
//  PriorityQueue.swift
//  Data-Structure
//
//  Created by jung on 1/13/25.
//

// MARK: - ADT
protocol PriorityQueueType {
  associatedtype T
  var count: Int { get }
  var isEmpty: Bool { get }
  var front: T? { get }
  
  mutating func enqueue(_ element: T)
  @discardableResult
  mutating func dequeue() -> T?
}

struct PriorityQueue<T: Comparable>: PriorityQueueType {
  private var heap: Heap<T>
  
  var count: Int { heap.count }
  var isEmpty: Bool { heap.isEmpty }
  var front: T? { heap.top }
  
  init(type: Heap<T>.HeapType) {
    self.heap = Heap(type: type)
  }
}

// MARK: - Methods
extension PriorityQueue {
  mutating func enqueue(_ element: T) {
    heap.push(element)
  }
  
  @discardableResult
  mutating func dequeue() -> T? {
    return heap.pop()
  }
}
