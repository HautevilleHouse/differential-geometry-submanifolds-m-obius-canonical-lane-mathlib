import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean

structure SubmanifoldStructurePackage where
  ambientManifold : Type u
  ambientTopology : TopologicalSpace ambientManifold
  ambientSmoothStructure : Type v
  submanifoldSet : Type w
  embedding : submanifoldSet → ambientManifold
  submanifoldTopology : submanifoldSet → TopologicalSpace (submanifoldSet)
  submanifoldSmoothStructure : submanifoldSet → Type x
  embeddedSubmanifold : Prop
  immersion : Prop
  submersion : Prop
  moebiusMap : submanifoldSet → ambientManifold
  moebiusInvariant : Prop

structure SubmanifoldStructureEvidence (S : SubmanifoldStructurePackage) where
  embeddedSubmanifoldClosed : S.embeddedSubmanifold
  immersionClosed : S.immersion
  submersionClosed : S.submersion
  moebiusInvariantClosed : S.moebiusInvariant

def SubmanifoldStructureClosed (S : SubmanifoldStructurePackage) : Prop :=
  S.embeddedSubmanifold ∧ S.immersion ∧ S.submersion ∧ S.moebiusInvariant

theorem submanifold_structure_closed_from_evidence
    (S : SubmanifoldStructurePackage) (E : SubmanifoldStructureEvidence S) :
    SubmanifoldStructureClosed S := by
  exact And.intro E.embeddedSubmanifoldClosed
    (And.intro E.immersionClosed (And.intro E.submersionClosed E.moebiusInvariantClosed))

end DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean
end HautevilleHouse