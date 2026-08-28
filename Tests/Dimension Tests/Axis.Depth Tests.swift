import Axis
import Direction
import Testing

@testable import Dimension

@Suite
struct `Axis.Depth - 3D Typealias` {

    @Test
    func `Axis3 Depth is identical to Depth`() {
        #expect(Axis<3>.Depth.backward == Depth.backward)
        #expect(Axis<3>.Depth.backward.opposite == Depth.backward.opposite)
    }

    @Test
    func `All Depth functionality available via Axis3 Depth`() {
        #expect(Axis<3>.Depth.forward.direction == Depth.forward.direction)
        #expect(Axis<3>.Depth.forward.opposite == Depth.forward.opposite)
        #expect(Axis<3>.Depth.forward.isForward == Depth.forward.isForward)
        #expect(Axis<3>.Depth.forward.isBackward == Depth.forward.isBackward)
        #expect(Axis<3>.Depth.backward.direction == Depth.backward.direction)
        #expect(Axis<3>.Depth.backward.opposite == Depth.backward.opposite)
        #expect(Axis<3>.Depth.backward.isForward == Depth.backward.isForward)
        #expect(Axis<3>.Depth.backward.isBackward == Depth.backward.isBackward)
    }

    @Test
    func `Depth available for 3D`() {

        _ = Axis<3>.Depth.forward
    }
}

@Suite
struct `Axis.Depth - 4D Typealias` {

    @Test(arguments: [Depth.forward, Depth.backward])
    func `Depth is available in 4D context`(depth: Depth) {

        #expect(depth.direction == .positive || depth.direction == .negative)
        #expect(depth.opposite.opposite == depth)
    }
}
