public enum Coordinate {}

extension Coordinate {

    public enum X<Space> {}

    public enum Y<Space> {}

    public enum Z<Space> {}

    public enum W<Space> {}

    public enum Vector<let N: Int, Space> {}
}

extension Coordinate.X: Spatial {}
extension Coordinate.Y: Spatial {}
extension Coordinate.Z: Spatial {}
extension Coordinate.W: Spatial {}
extension Coordinate.Vector: Spatial {}

extension Coordinate.X {

    public typealias Value<Scalar> = Tagged<Coordinate.X<Space>, Scalar>
}

extension Coordinate.Y {

    public typealias Value<Scalar> = Tagged<Coordinate.Y<Space>, Scalar>
}

extension Coordinate.Z {

    public typealias Value<Scalar> = Tagged<Coordinate.Z<Space>, Scalar>
}

extension Coordinate.W {

    public typealias Value<Scalar> = Tagged<Coordinate.W<Space>, Scalar>
}
