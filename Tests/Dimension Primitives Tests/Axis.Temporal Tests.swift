import Axis_Primitive
import Direction_Primitive
import Testing

@testable import Dimension_Primitives

@Suite
struct `Axis.Temporal - Typealias` {

    @Test
    func `Axis Temporal is identical to Temporal`() {
        #expect(Axis<4>.Temporal.future == Temporal.future)
        #expect(Axis<4>.Temporal.future.opposite == Temporal.future.opposite)
    }

    @Test
    func `All Temporal functionality available via Axis Temporal`() {
        #expect(Axis<4>.Temporal.future.direction == Temporal.future.direction)
        #expect(Axis<4>.Temporal.future.opposite == Temporal.future.opposite)
        #expect(Axis<4>.Temporal.future.isFuture == Temporal.future.isFuture)
        #expect(Axis<4>.Temporal.future.isPast == Temporal.future.isPast)
        #expect(Axis<4>.Temporal.past.direction == Temporal.past.direction)
        #expect(Axis<4>.Temporal.past.opposite == Temporal.past.opposite)
        #expect(Axis<4>.Temporal.past.isFuture == Temporal.past.isFuture)
        #expect(Axis<4>.Temporal.past.isPast == Temporal.past.isPast)
    }

    @Test
    func `Temporal available for 4D`() {

        _ = Axis<4>.Temporal.future
    }
}
