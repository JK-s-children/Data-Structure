public struct KJDeque<Element> {
    private let deque: [Element]

    public var count: Int { deque.count }
    public var isEmpty: Bool { deque.isEmpty }

    public init(_ deque: [Element] = []) {
        self.deque = deque
    }

    // MARK: PUSH
    public func pushFirst(_ value: Element) -> KJDeque {
        return KJDeque([value] + deque)
    }

    public func pushLast(_ value: Element) -> KJDeque {
        return KJDeque(deque + [value])
    }

    // MARK: POP
    public func popFirst() -> (KJDeque, Element?) {
        guard let first = deque.first else { return (self, nil) }
        return (KJDeque(Array(deque.dropFirst())), first)
    }

    public func popLast() -> (KJDeque, Element?) {
        guard let last = deque.last else { return (self, nil) }
        return (KJDeque(Array(deque.dropLast())), last)
    }
}

// MARK: Equatable
extension KJDeque: Equatable where Element: Equatable {
    public static func == (lhs: KJDeque<Element>, rhs: KJDeque<Element>) -> Bool {
        lhs.deque == rhs.deque
    }
}

// MARK: CustomStringConvertible
extension KJDeque: CustomStringConvertible {
    public var description: String {
        "Current KJDeque: \(deque)"
    }
}