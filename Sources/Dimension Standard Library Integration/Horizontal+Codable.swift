public import Dimension

#if !hasFeature(Embedded)
    extension Horizontal: Codable {

        public init(from decoder: any Decoder) throws {
            let container = try decoder.singleValueContainer()
            let value = try container.decode(String.self)
            switch value {
            case "rightward": self = .rightward
            case "leftward": self = .leftward
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown Horizontal value \(value)"
                    )
                )
            }
        }

        public func encode(to encoder: any Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .rightward: try container.encode("rightward")
            case .leftward: try container.encode("leftward")
            }
        }
    }
#endif
