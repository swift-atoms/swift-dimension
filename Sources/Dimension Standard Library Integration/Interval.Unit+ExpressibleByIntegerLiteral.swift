public import Dimension

extension Interval.Unit: ExpressibleByIntegerLiteral
where Scalar: ExpressibleByIntegerLiteral {

    public typealias IntegerLiteralType = Scalar.IntegerLiteralType

    @inlinable
    public init(integerLiteral value: IntegerLiteralType) {
        let scalar = Scalar(integerLiteral: value)
        assert(
            scalar >= 0 && scalar <= 1,
            "Integer literal must be 0 or 1"
        )

        self.init(clamping: scalar)
    }
}
