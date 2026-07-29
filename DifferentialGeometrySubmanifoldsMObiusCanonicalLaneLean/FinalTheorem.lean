import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean.BridgeLemmas
import DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean

def ConstrainedMoebiusClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_moebius_endgame (A : AdmissibleClass) :
    ConstrainedMoebiusClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean
end HautevilleHouse