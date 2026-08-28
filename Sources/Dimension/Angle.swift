public enum Angle {}

extension Angle {

    public enum Radian {}

    public enum Degree {}
}

extension Angle.Radian {

    public typealias Value<Scalar> = Tagged<Angle.Radian, Scalar>
}

extension Angle.Degree {

    public typealias Value<Scalar> = Tagged<Angle.Degree, Scalar>
}
