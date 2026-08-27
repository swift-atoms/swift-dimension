public import Dimension

extension Scale: ExpressibleByFloatLiteral
where N == 1, Scalar: ExpressibleByFloatLiteral & FloatingPoint {

    public typealias FloatLiteralType = Scalar.FloatLiteralType

    @inlinable
    public init(floatLiteral value: FloatLiteralType) {
        self.init(Scalar(floatLiteral: value))
    }
}
