public import Dimension

#if !hasFeature(Embedded)
    extension Chirality: Codable {

        public init(from decoder: any Decoder) throws {
            let container = try decoder.singleValueContainer()
            let value = try container.decode(String.self)
            switch value {
            case "left": self = .left
            case "right": self = .right
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown Chirality value \(value)"
                    )
                )
            }
        }

        public func encode(to encoder: any Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .left: try container.encode("left")
            case .right: try container.encode("right")
            }
        }
    }
#endif
