public enum Measure<let N: Int, Space> {}

extension Measure: Spatial {}

extension Measure {

    public typealias Value<Scalar> = Tagged<Measure<N, Space>, Scalar>
}

public typealias Magnitude<Space> = Measure<1, Space>

public typealias Area<Space> = Measure<2, Space>

public typealias Volume<Space> = Measure<3, Space>

public typealias Length<Space, Scalar> = Magnitude<Space>.Value<Scalar>

public typealias Radius<Space, Scalar> = Magnitude<Space>.Value<Scalar>

public typealias Diameter<Space, Scalar> = Magnitude<Space>.Value<Scalar>

public typealias Distance<Space, Scalar> = Magnitude<Space>.Value<Scalar>

public typealias Circumference<Space, Scalar> = Magnitude<Space>.Value<Scalar>

public typealias Perimeter<Space, Scalar> = Magnitude<Space>.Value<Scalar>

public typealias ArcLength<Space, Scalar> = Magnitude<Space>.Value<Scalar>
