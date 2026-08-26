public import Direction_Primitive

extension Direction: @retroactive CaseIterable {

    public static var allCases: [Direction] { [.positive, .negative] }
}

extension Direction: Orientation {

    @inlinable
    public var direction: Direction { self }

    @inlinable
    public init(direction: Direction) { self = direction }
}
