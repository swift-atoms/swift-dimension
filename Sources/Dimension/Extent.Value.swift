public import Tagged

extension Extent.X {

    public typealias Value<Scalar> = Tagged<Extent.X<Space>, Scalar>
}

extension Extent.Y {

    public typealias Value<Scalar> = Tagged<Extent.Y<Space>, Scalar>
}

extension Extent.Z {

    public typealias Value<Scalar> = Tagged<Extent.Z<Space>, Scalar>
}
