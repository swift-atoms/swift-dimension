public enum Displacement {}

extension Displacement {

    public enum X<Space> {}

    public enum Y<Space> {}

    public enum Z<Space> {}

    public enum W<Space> {}

    public enum Vector<let N: Int, Space> {}
}

extension Displacement.X: Spatial {}
extension Displacement.Y: Spatial {}
extension Displacement.Z: Spatial {}
extension Displacement.W: Spatial {}
extension Displacement.Vector: Spatial {}

extension Displacement.X {

    public typealias Value<Scalar> = Tagged<Displacement.X<Space>, Scalar>
}

extension Displacement.Y {

    public typealias Value<Scalar> = Tagged<Displacement.Y<Space>, Scalar>
}

extension Displacement.Z {

    public typealias Value<Scalar> = Tagged<Displacement.Z<Space>, Scalar>
}

extension Displacement.W {

    public typealias Value<Scalar> = Tagged<Displacement.W<Space>, Scalar>
}
