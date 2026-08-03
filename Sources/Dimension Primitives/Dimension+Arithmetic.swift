// MARK: - Negation

extension Scale where Scalar: SignedNumeric & FloatingPoint {
    /// Negates all scale factors.
    ///
    /// Useful for rotation matrix components where `-sin(θ)` is needed.
    @inlinable
    public static prefix func - (scale: Self) -> Self {
        var result = scale.factors
        (0..<N).forEach { i in
            result[i] = -scale.factors[i]
        }
        return Self(result)
    }
}
