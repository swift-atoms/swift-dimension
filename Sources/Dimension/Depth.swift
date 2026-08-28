public import Direction

public enum Depth: Sendable, Hashable {

    case forward

    case backward
}

extension Depth {

    @inlinable
    public static func opposite(of orientation: Depth) -> Depth {
        switch orientation {
        case .forward: return .backward
        case .backward: return .forward
        }
    }
}

extension Depth: Orientation {

    @inlinable
    public var direction: Direction {
        switch self {
        case .forward: return .positive
        case .backward: return .negative
        }
    }

    @inlinable
    public init(direction: Direction) {
        switch direction {
        case .positive: self = .forward
        case .negative: self = .backward
        }
    }

    @inlinable
    public var opposite: Depth {
        Self.opposite(of: self)
    }

    public static let allCases: [Depth] = [.forward, .backward]
}

extension Depth {

    @inlinable
    public var isForward: Bool { self == .forward }

    @inlinable
    public var isBackward: Bool { self == .backward }
}

extension Depth: CustomStringConvertible {

    public var description: String {
        switch self {
        case .forward: return "forward"
        case .backward: return "backward"
        }
    }
}

#if !hasFeature(Embedded)
    extension Depth: Codable {}
#endif
