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
