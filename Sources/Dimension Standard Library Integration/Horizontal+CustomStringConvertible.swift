public import Dimension

extension Horizontal: CustomStringConvertible {

    public var description: String {
        switch self {
        case .rightward: return "rightward"
        case .leftward: return "leftward"
        }
    }
}
