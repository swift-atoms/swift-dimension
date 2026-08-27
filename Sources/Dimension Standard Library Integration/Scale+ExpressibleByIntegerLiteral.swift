public import Dimension

extension Scale: ExpressibleByIntegerLiteral
where N == 1, Scalar: ExpressibleByIntegerLiteral & FloatingPoint {

    public typealias IntegerLiteralType = Scalar.IntegerLiteralType

    @inlinable
    public init(integerLiteral value: IntegerLiteralType) {
        self.init(Scalar(integerLiteral: value))
    }
}
