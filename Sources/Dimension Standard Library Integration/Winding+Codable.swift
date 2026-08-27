public import Dimension

#if !hasFeature(Embedded)
    extension Winding: Codable {

        public init(from decoder: any Decoder) throws {
            let container = try decoder.singleValueContainer()
            let value = try container.decode(String.self)
            switch value {
            case "clockwise": self = .clockwise
            case "counterclockwise": self = .counterclockwise
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown Winding value \(value)"
                    )
                )
            }
        }

        public func encode(to encoder: any Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .clockwise: try container.encode("clockwise")
            case .counterclockwise: try container.encode("counterclockwise")
            }
        }
    }
#endif
