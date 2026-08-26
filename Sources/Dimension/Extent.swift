public enum Extent {}

extension Extent {

    public enum X<Space> {}

    public enum Y<Space> {}

    public enum Z<Space> {}

    public enum Vector<let N: Int, Space> {}
}

extension Extent.X: Spatial {}
extension Extent.Y: Spatial {}
extension Extent.Z: Spatial {}
extension Extent.Vector: Spatial {}

extension Extent.X {

    public typealias Value<Scalar> = Tagged<Extent.X<Space>, Scalar>
}

extension Extent.Y {

    public typealias Value<Scalar> = Tagged<Extent.Y<Space>, Scalar>
}

extension Extent.Z {

    public typealias Value<Scalar> = Tagged<Extent.Z<Space>, Scalar>
}
