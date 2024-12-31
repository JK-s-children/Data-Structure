var deque = KJDeque<Int>()

// PUSH
deque = deque.pushFirst(1) // [1]
deque = deque.pushLast(2)  // [1, 2]
deque = deque.pushFirst(0) // [0, 1, 2]
print(deque) // Current KJDeque: [0, 1, 2]

// POP FIRST
let (dequeAfterPopFirst, firstValue) = deque.popFirst()
print("Popped First: \(firstValue ?? -1)") // Popped First: 0
print(dequeAfterPopFirst) // Current KJDeque: [1, 2]

// POP LAST
let (dequeAfterPopLast, lastValue) = deque.popLast()
print("Popped Last: \(lastValue ?? -1)") // Popped Last: 2
print(dequeAfterPopLast) // Current KJDeque: [1]

// Equatable
let deque1 = KJDeque([1, 2, 3])
let deque2 = KJDeque([1, 2, 3])
print(deque1 == deque2) // true