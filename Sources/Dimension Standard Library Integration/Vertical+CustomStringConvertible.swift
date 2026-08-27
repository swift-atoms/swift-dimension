public import Dimension

extension Vertical: CustomStringConvertible {

    public var description: String {
        switch self {
        case .upward: return "upward"
        case .downward: return "downward"
        }
    }
}
