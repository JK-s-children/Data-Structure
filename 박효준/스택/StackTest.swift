var stack = KJStack<Int>()
print(stack) // KJStack: []

stack = stack.push(5)
print(stack) // KJStack: [5]

stack = stack.push(10)
print(stack) // KJStack: [5, 10]

print("Peek Value: \(stack.peek ?? -1)") // Peek Value: 10
print("Current Stack Count: \(stack.count)") // Current Stack Count: 2

let lastValue = stack.popLast()
print("Popped Value: \(lastValue ?? -1)") // Popped Value: 10

stack = stack.pop()
print(stack) // KJStack: [5]

// Equatable 테스트
let stack1 = KJStack([1, 2, 3])
let stack2 = KJStack([1, 2, 3])

print(stack1 == stack2) // true