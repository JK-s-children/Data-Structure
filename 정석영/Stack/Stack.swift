//
//  Stack.swift
//  Data-Structure
//
//  Created by jung on 12/31/24.
//

// MARK: - ADT
protocol StackADT {
  associatedtype T
  
  var count: Int { get }
  var isEmpty: Bool { get }
  var top: T? { get }
  
  mutating func push(_ element: T)
  mutating func pop() -> T?
}

// MARK: - Data Structure
struct Stack<T>: StackADT {
  private var elements: [T] = []
  
  var count: Int { elements.count }
  var isEmpty: Bool { elements.isEmpty }
  var top: T? { elements.last}
}

// MARK: Methods
extension Stack {
  mutating func push(_ element: T) {
    elements.append(element)
  }
  
  mutating func pop() -> T? {
    return elements.popLast()
  }
}
