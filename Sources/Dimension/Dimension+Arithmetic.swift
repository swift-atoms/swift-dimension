extension Scale where Scalar: SignedNumeric & FloatingPoint {

    @inlinable
    public static prefix func - (scale: Self) -> Self {
        var result = scale.factors
        (0..<N).forEach { i in
            result[i] = -scale.factors[i]
        }
        return Self(result)
    }
}
