import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MöbiusSubmanifoldsCanonicalLaneLean

structure HolonomyTheoryPackage where
  connectionCurvature : Prop
  parallelTransport : Prop
  holonomyGroup : Prop
  ambrosetSingersTheorem : Prop

structure HolonomyTheoryEvidence (H : HolonomyTheoryPackage) where
  connectionCurvatureClosed : H.connectionCurvature
  parallelTransportClosed : H.parallelTransport
  holonomyGroupClosed : H.holonomyGroup
  ambrosetSingersTheoremClosed : H.ambrosetSingersTheorem

def HolonomyTheoryClosed (H : HolonomyTheoryPackage) : Prop :=
  H.connectionCurvature ∧ H.parallelTransport ∧ H.holonomyGroup ∧ H.ambrosetSingersTheorem

theorem holonomy_theory_closed_from_evidence (H : HolonomyTheoryPackage) (E : HolonomyTheoryEvidence H) :
    HolonomyTheoryClosed H := by
  exact And.intro E.connectionCurvatureClosed
    (And.intro E.parallelTransportClosed
      (And.intro E.holonomyGroupClosed E.ambrosetSingersTheoremClosed))

end MöbiusSubmanifoldsCanonicalLaneLean
end HautevilleHouse
