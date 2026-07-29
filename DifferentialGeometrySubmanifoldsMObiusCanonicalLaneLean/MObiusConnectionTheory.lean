import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean

structure MObiusConnectionTheoryPackage where
  ambientConnection : Type u
  inducedConnection : Type v
  normalConnection : Type w
  van der Waerden-Bortolotti Connection : Type x
  ricciEquation : Prop
  codazziMainardiEquation : Prop
  gaussEquation : Prop

structure MObiusConnectionTheoryEvidence (C : MObiusConnectionTheoryPackage) where
  ambientConnectionClosed : Prop
  inducedConnectionClosed : Prop
  normalConnectionClosed : Prop
  vanDerWaerdenBortolottiClosed : Prop
  ricciEquationClosed : Prop
  codazziMainardiEquationClosed : Prop
  gaussEquationClosed : Prop

def MObiusConnectionTheoryClosed (C : MObiusConnectionTheoryPackage) : Prop :=
  C.ambientConnection ∧ C.inducedConnection ∧ C.normalConnection ∧
  C.vanDerWaerdenBortolottiConnection ∧ C.ricciEquation ∧ C.codazziMainardiEquation ∧ C.gaussEquation

theorem mobius_connection_theory_closed_from_evidence (C : MObiusConnectionTheoryPackage) (E : MObiusConnectionTheoryEvidence C) :
    MObiusConnectionTheoryClosed C := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ ?_)))))
  · exact E.ambientConnectionClosed
  · exact E.inducedConnectionClosed
  · exact E.normalConnectionClosed
  · exact E.vanDerWaerdenBortolottiClosed
  · exact E.ricciEquationClosed
  · exact E.codazziMainardiEquationClosed
  · exact E.gaussEquationClosed

end DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean
end HautevilleHouse
