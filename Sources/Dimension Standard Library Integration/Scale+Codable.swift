public import Dimension

#if !hasFeature(Embedded)
    extension Scale: Codable where Scalar: Codable, Scalar: FloatingPoint {

        public init(from decoder: any Decoder) throws {
            var container = try decoder.unkeyedContainer()
            var factors = InlineArray<N, Scalar>(repeating: .zero)
            for i in 0..<N {
                factors[i] = try container.decode(Scalar.self)
            }
            self.init(factors)
        }

        public func encode(to encoder: any Encoder) throws {
            var container = encoder.unkeyedContainer()
            for i in 0..<N {
                try container.encode(factors[i])
            }
        }
    }
#endif
