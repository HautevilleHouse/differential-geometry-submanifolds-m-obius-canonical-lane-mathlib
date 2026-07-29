import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MöbiusSubmanifoldsCanonicalLaneLean

structure ConformalStructurePackage where
  conformalMetric : Prop
  weylTensor : Prop
  conformalFlatness : Prop
  möbiusTransformationGroup : Prop

structure ConformalStructureEvidence (C : ConformalStructurePackage) where
  conformalMetricClosed : C.conformalMetric
  weylTensorClosed : C.weylTensor
  conformalFlatnessClosed : C.conformalFlatness
  möbiusTransformationGroupClosed : C.möbiusTransformationGroup

def ConformalStructureClosed (C : ConformalStructurePackage) : Prop :=
  C.conformalMetric ∧ C.weylTensor ∧ C.conformalFlatness ∧ C.möbiusTransformationGroup

theorem conformal_structure_closed_from_evidence (C : ConformalStructurePackage) (E : ConformalStructureEvidence C) :
    ConformalStructureClosed C := by
  exact And.intro E.conformalMetricClosed
    (And.intro E.weylTensorClosed
      (And.intro E.conformalFlatnessClosed E.möbiusTransformationGroupClosed))

end MöbiusSubmanifoldsCanonicalLaneLean
end HautevilleHouse
