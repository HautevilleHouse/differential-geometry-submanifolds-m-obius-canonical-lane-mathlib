import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean

structure MObiusHolonomyPackage where
  ambientManifold : Type u
  submanifold : Type v
  holonomyGroupAmbient : Type w
  holonomyGroupSubmanifold : Type x
  holonomyReduction : Prop
  ambilisationHolonomy : Type y
  normalHolonomy : Type z
  holonomyTheorem : Prop

structure MObiusHolonomyEvidence (H : MObiusHolonomyPackage) where
  holonomyGroupAmbientClosed : Prop
  holonomyGroupSubmanifoldClosed : Prop
  holonomyReductionClosed : Prop
  ambilisationHolonomyClosed : Prop
  normalHolonomyClosed : Prop
  holonomyTheoremClosed : Prop

def MObiusHolonomyClosed (H : MObiusHolonomyPackage) : Prop :=
  H.holonomyGroupAmbient ∧ H.holonomyGroupSubmanifold ∧ H.holonomyReduction ∧
  H.ambilisationHolonomy ∧ H.normalHolonomy ∧ H.holonomyTheorem

theorem mobius_holonomy_closed_from_evidence (H : MObiusHolonomyPackage) (E : MObiusHolonomyEvidence H) :
    MObiusHolonomyClosed H := by
  refine And.intro E.holonomyGroupAmbientClosed (And.intro E.holonomyGroupSubmanifoldClosed (And.intro E.holonomyReductionClosed (And.intro E.ambilisationHolonomyClosed (And.intro E.normalHolonomyClosed E.holonomyTheoremClosed))))

end DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean
end HautevilleHouse
