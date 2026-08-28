import Axis
import Direction
import Testing

@testable import Dimension

@Suite
struct `Axis.Direction - Typealias` {

    @Test
    func `Direction is same type across all dimensions`() {

        #expect(Axis<1>.Direction.positive == Axis<2>.Direction.positive)
        #expect(Axis<2>.Direction.positive == Axis<3>.Direction.positive)
        #expect(Axis<3>.Direction.positive == Axis<4>.Direction.positive)
        #expect(Axis<4>.Direction.positive == Direction.positive)
    }

    @Test
    func `Axis Direction is identical to Direction`() {
        #expect(Axis<3>.Direction.negative == Direction.negative)
        #expect(Axis<3>.Direction.negative.opposite == Direction.negative.opposite)
    }

    @Test
    func `All Direction functionality available via Axis Direction`() {
        #expect(Axis<2>.Direction.positive.sign == Direction.positive.sign)
        #expect(Axis<2>.Direction.positive.opposite == Direction.positive.opposite)
        #expect(Axis<2>.Direction.positive.direction == Direction.positive.direction)
        #expect(Axis<2>.Direction.negative.sign == Direction.negative.sign)
        #expect(Axis<2>.Direction.negative.opposite == Direction.negative.opposite)
        #expect(Axis<2>.Direction.negative.direction == Direction.negative.direction)
    }
}
