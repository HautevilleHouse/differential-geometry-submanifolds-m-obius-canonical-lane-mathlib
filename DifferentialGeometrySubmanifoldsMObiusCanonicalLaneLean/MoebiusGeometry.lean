import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean

structure MoebiusGeometryPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Type v
  metric : Type w
  moebiusTransform : manifold → manifold
  isMoebiusMap : Prop
  conformalInvariant : Prop
  curvatureInvariant : Type x
  preservesAngles : Prop
  sendsCirclesToCircles : Prop

structure MoebiusGeometryEvidence (M : MoebiusGeometryPackage) where
  isMoebiusMapClosed : M.isMoebiusMap
  conformalInvariantClosed : M.conformalInvariant
  preservesAnglesClosed : M.preservesAngles
  sendsCirclesToCirclesClosed : M.sendsCirclesToCircles

def MoebiusGeometryClosed (M : MoebiusGeometryPackage) : Prop :=
  M.isMoebiusMap ∧ M.conformalInvariant ∧ M.preservesAngles ∧ M.sendsCirclesToCircles

theorem moebius_geometry_closed_from_evidence
    (M : MoebiusGeometryPackage) (E : MoebiusGeometryEvidence M) :
    MoebiusGeometryClosed M := by
  exact And.intro E.isMoebiusMapClosed
    (And.intro E.conformalInvariantClosed (And.intro E.preservesAnglesClosed E.sendsCirclesToCirclesClosed))

end DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean
end HautevilleHouse