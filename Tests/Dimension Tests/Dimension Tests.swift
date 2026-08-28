import Testing

@testable import Dimension

@Suite
struct `Dimension - Phantom Types` {
    enum TestSpace {}

    @Test
    func `Coordinate X type exists`() {

        let _: Coordinate.X<TestSpace>? = nil
        #expect(true)
    }

    @Test
    func `Displacement X type exists`() {
        let _: Displacement.X<TestSpace>? = nil
        #expect(true)
    }

    @Test
    func `Y types exist`() {
        let _: Coordinate.Y<TestSpace>? = nil
        let _: Displacement.Y<TestSpace>? = nil
        #expect(true)
    }

    @Test
    func `Z types exist`() {
        let _: Coordinate.Z<TestSpace>? = nil
        let _: Displacement.Z<TestSpace>? = nil
        #expect(true)
    }

    @Test
    func `W types exist`() {
        let _: Coordinate.W<TestSpace>? = nil
        let _: Displacement.W<TestSpace>? = nil
        #expect(true)
    }

    @Test
    func `Magnitude type exists`() {
        let _: Magnitude<TestSpace>? = nil
        #expect(true)
    }
}
