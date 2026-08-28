public import Direction

public enum Temporal: Sendable, Hashable {

    case future

    case past
}

extension Temporal {

    @inlinable
    public static func opposite(of orientation: Temporal) -> Temporal {
        switch orientation {
        case .future: return .past
        case .past: return .future
        }
    }
}

extension Temporal: Orientation {

    @inlinable
    public var direction: Direction {
        switch self {
        case .future: return .positive
        case .past: return .negative
        }
    }

    @inlinable
    public init(direction: Direction) {
        switch direction {
        case .positive: self = .future
        case .negative: self = .past
        }
    }

    @inlinable
    public var opposite: Temporal {
        Self.opposite(of: self)
    }

    public static let allCases: [Temporal] = [.future, .past]
}

extension Temporal {

    @inlinable
    public var isFuture: Bool { self == .future }

    @inlinable
    public var isPast: Bool { self == .past }
}

extension Temporal: CustomStringConvertible {

    public var description: String {
        switch self {
        case .future: return "future"
        case .past: return "past"
        }
    }
}

#if !hasFeature(Embedded)
    extension Temporal: Codable {}
#endif
