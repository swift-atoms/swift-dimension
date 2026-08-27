public import Dimension

#if !hasFeature(Embedded)
    extension Depth: Codable {

        public init(from decoder: any Decoder) throws {
            let container = try decoder.singleValueContainer()
            let value = try container.decode(String.self)
            switch value {
            case "forward": self = .forward
            case "backward": self = .backward
            default:
                throw DecodingError.dataCorrupted(
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unknown Depth value \(value)"
                    )
                )
            }
        }

        public func encode(to encoder: any Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .forward: try container.encode("forward")
            case .backward: try container.encode("backward")
            }
        }
    }
#endif
