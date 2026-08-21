public enum Interval<Scalar: ~Copyable>: ~Copyable {}

extension Interval: Copyable where Scalar: Copyable {}
extension Interval: Sendable where Scalar: Sendable {}
