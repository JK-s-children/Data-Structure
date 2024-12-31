var queue = KJQueue<Int>()
print(queue) // Current KJQueue: [], Count: 0, Is Empty: true

queue = queue.enqueue(1)
queue = queue.enqueue(2)
queue = queue.enqueue(3)
print(queue) // Current KJQueue: [1, 2, 3], Count: 3, Is Empty: false

// Dequeue 테스트
let dequeuedValue = queue.dequeueValue()
print("Dequeued Value: \(dequeuedValue ?? -1)") // Dequeued Value: 1

queue = queue.dequeue()
print(queue) // Current KJQueue: [2, 3], Count: 2, Is Empty: false

// Equatable 테스트
let queue1 = KJQueue([1, 2, 3])
let queue2 = KJQueue([1, 2, 3])
print(queue1 == queue2) // true