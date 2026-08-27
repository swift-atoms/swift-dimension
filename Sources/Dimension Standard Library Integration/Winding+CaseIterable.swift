public import Dimension

extension Winding: CaseIterable {

    public static var allCases: [Winding] { [.clockwise, .counterclockwise] }
}
