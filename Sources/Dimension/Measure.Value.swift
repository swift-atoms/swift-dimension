public import Tagged

extension Measure {

    public typealias Value<Scalar> = Tagged<Measure<N, Space>, Scalar>
}

public typealias Length<Space, Scalar> = Magnitude<Space>.Value<Scalar>

public typealias Radius<Space, Scalar> = Magnitude<Space>.Value<Scalar>

public typealias Diameter<Space, Scalar> = Magnitude<Space>.Value<Scalar>

public typealias Distance<Space, Scalar> = Magnitude<Space>.Value<Scalar>

public typealias Circumference<Space, Scalar> = Magnitude<Space>.Value<Scalar>

public typealias Perimeter<Space, Scalar> = Magnitude<Space>.Value<Scalar>

public typealias ArcLength<Space, Scalar> = Magnitude<Space>.Value<Scalar>
