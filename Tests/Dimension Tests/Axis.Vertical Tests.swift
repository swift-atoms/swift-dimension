import Axis
import Direction
import Testing

@testable import Dimension

@Suite
struct `Axis.Vertical - Typealias` {

    @Test
    func `Axis2 Vertical is identical to Vertical`() {

        #expect(Axis<2>.Vertical.downward == Vertical.downward)
        #expect(Axis<2>.Vertical.downward.opposite == Vertical.downward.opposite)
    }

    @Test
    func `All Vertical functionality available via Axis2 Vertical`() {

        #expect(Axis<2>.Vertical.upward.direction == Vertical.upward.direction)
        #expect(Axis<2>.Vertical.upward.opposite == Vertical.upward.opposite)
        #expect(Axis<2>.Vertical.upward.isUpward == Vertical.upward.isUpward)
        #expect(Axis<2>.Vertical.upward.isDownward == Vertical.upward.isDownward)
        #expect(Axis<2>.Vertical.downward.direction == Vertical.downward.direction)
        #expect(Axis<2>.Vertical.downward.opposite == Vertical.downward.opposite)
        #expect(Axis<2>.Vertical.downward.isUpward == Vertical.downward.isUpward)
        #expect(Axis<2>.Vertical.downward.isDownward == Vertical.downward.isDownward)
    }

    @Test
    func `Vertical available for 2D`() {

        _ = Axis<2>.Vertical.upward
    }
}
