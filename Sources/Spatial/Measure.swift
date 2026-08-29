public enum Measure<let N: Int, Space> {}

extension Measure: Spatial {}

public typealias Magnitude<Space> = Measure<1, Space>

public typealias Area<Space> = Measure<2, Space>

public typealias Volume<Space> = Measure<3, Space>
