public struct KJQueue<Element> {
    private let queue: [Element]

    public var count: Int { queue.count }
    public var isEmpty: Bool { queue.isEmpty }
    public var peek: Element? { queue.first }

    // MARK: Initializer
    public init(_ queue: [Element] = []) {
        self.queue = queue
    }

    public func enqueue(_ value: Element) -> KJQueue {
        return KJQueue(queue + [value])
    }

    public func dequeue() -> KJQueue {
        guard !isEmpty else { return self }
        return KJQueue(Array(queue.dropFirst()))
    }

    public func dequeueValue() -> Element? {
        return queue.first
    }
}

// MARK: Equatable
extension KJQueue: Equatable where Element: Equatable {
    public static func == (lhs: KJQueue<Element>, rhs: KJQueue<Element>) -> Bool {
        lhs.queue == rhs.queue
    }
}

// MARK: CustomStringConvertible
extension KJQueue: CustomStringConvertible {
    public var description: String {
        "Current KJQueue: \(queue)"
    }
}