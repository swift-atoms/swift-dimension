public import Tagged

extension Coordinate.X {

    public typealias Value<Scalar> = Tagged::Tagged<Coordinate.X<Space>, Scalar>
}

extension Coordinate.Y {

    public typealias Value<Scalar> = Tagged::Tagged<Coordinate.Y<Space>, Scalar>
}

extension Coordinate.Z {

    public typealias Value<Scalar> = Tagged::Tagged<Coordinate.Z<Space>, Scalar>
}

extension Coordinate.W {

    public typealias Value<Scalar> = Tagged::Tagged<Coordinate.W<Space>, Scalar>
}
