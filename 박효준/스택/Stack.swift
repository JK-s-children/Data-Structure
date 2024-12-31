public struct KJStack<Element> {
    private let stack: [Element]

    public var count: Int { stack.count }
    public var isEmpty: Bool { stack.isEmpty }
    public var peek: Element? { stack.last }

    public init(_ stack: [Element] = []) {
        self.stack = stack
    }

    public func push(_ value: Element) -> KJStack {
        return KJStack(stack + [value])
    }

    public func pop() -> KJStack {
        guard !stack.isEmpty else { return self }
        return KJStack(Array(stack.dropLast()))
    }
    
    public func popLast() -> Element? {
        return stack.last
    }
}

// MARK: Equatable
extension KJStack: Equatable where Element: Equatable {
    public static func == (lhs: KJStack<Element>, rhs: KJStack<Element>) -> Bool {
        lhs.stack == rhs.stack
    }
}

// MARK: CustomStringConvertible
extension KJStack: CustomStringConvertible {
    public var description: String {
        "Current KJStack: \(stack)"
    }
}