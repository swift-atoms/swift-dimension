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
