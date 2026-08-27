public import Dimension

#if !hasFeature(Embedded)
    extension Temporal: Codable {

        public init(from decoder: any Decoder) throws {
            let container = try decoder.singleValueContainer()
            let value = try container.decode(String.self)
            switch value {
            case "future": self = .future
            case "past": self = .past
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown Temporal value \(value)"
                    )
                )
            }
        }

        public func encode(to encoder: any Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .future: try container.encode("future")
            case .past: try container.encode("past")
            }
        }
    }
#endif
