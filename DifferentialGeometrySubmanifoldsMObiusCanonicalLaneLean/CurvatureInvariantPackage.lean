import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean

structure CurvatureInvariantPackage where
  submanifold : Type u
  embedding : Type v
  secondFundamentalForm : Type w
  gaussEquation : Prop
  codazziEquation : Prop
  ricciEquation : Prop

def CurvatureInvariantClosed (P : CurvatureInvariantPackage) : Prop :=
  P.gaussEquation ∧ P.codazziEquation ∧ P.ricciEquation

structure CurvatureInvariantEvidence (P : CurvatureInvariantPackage) where
  gaussEquationClosed : P.gaussEquation
  codazziEquationClosed : P.codazziEquation
  ricciEquationClosed : P.ricciEquation

theorem curvature_invariant_closed_from_evidence (P : CurvatureInvariantPackage) (E : CurvatureInvariantEvidence P) :
    CurvatureInvariantClosed P := by
  exact And.intro E.gaussEquationClosed (And.intro E.codazziEquationClosed E.ricciEquationClosed)

end DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean
end HautevilleHouse