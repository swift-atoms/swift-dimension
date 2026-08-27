public import Dimension

extension Temporal: CustomStringConvertible {

    public var description: String {
        switch self {
        case .future: return "future"
        case .past: return "past"
        }
    }
}
