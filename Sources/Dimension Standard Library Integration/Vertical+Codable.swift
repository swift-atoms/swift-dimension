public import Dimension

#if !hasFeature(Embedded)
    extension Vertical: Codable {

        public init(from decoder: any Decoder) throws {
            let container = try decoder.singleValueContainer()
            let value = try container.decode(String.self)
            switch value {
            case "upward": self = .upward
            case "downward": self = .downward
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown Vertical value \(value)"
                    )
                )
            }
        }

        public func encode(to encoder: any Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .upward: try container.encode("upward")
            case .downward: try container.encode("downward")
            }
        }
    }
#endif
