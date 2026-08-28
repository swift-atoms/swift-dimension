public import Direction

public enum Vertical: Sendable, Hashable {

    case upward

    case downward
}

extension Vertical {

    @inlinable
    public static func opposite(of orientation: Vertical) -> Vertical {
        switch orientation {
        case .upward: return .downward
        case .downward: return .upward
        }
    }
}

extension Vertical: Orientation {

    @inlinable
    public var direction: Direction {
        switch self {
        case .upward: return .positive
        case .downward: return .negative
        }
    }

    @inlinable
    public init(direction: Direction) {
        switch direction {
        case .positive: self = .upward
        case .negative: self = .downward
        }
    }

    @inlinable
    public var opposite: Vertical {
        Self.opposite(of: self)
    }

    public static let allCases: [Vertical] = [.upward, .downward]
}

extension Vertical {

    @inlinable
    public var isUpward: Bool { self == .upward }

    @inlinable
    public var isDownward: Bool { self == .downward }
}

extension Vertical: CustomStringConvertible {

    public var description: String {
        switch self {
        case .upward: return "upward"
        case .downward: return "downward"
        }
    }
}

#if !hasFeature(Embedded)
    extension Vertical: Codable {}
#endif
