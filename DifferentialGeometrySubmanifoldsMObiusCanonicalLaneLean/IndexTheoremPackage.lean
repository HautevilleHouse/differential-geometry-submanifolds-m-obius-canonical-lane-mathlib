import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean

structure IndexTheoremPackage where
  submanifold : Type u
  ellipticOperator : Type v
  indexFormula : Prop
  analyticIndexDefined : Prop
  topologicalIndexDefined : Prop
  indexEquality : Prop

def IndexTheoremClosed (P : IndexTheoremPackage) : Prop :=
  P.indexFormula ∧ P.analyticIndexDefined ∧ P.topologicalIndexDefined ∧ P.indexEquality

structure IndexTheoremEvidence (P : IndexTheoremPackage) where
  indexFormulaClosed : P.indexFormula
  analyticIndexDefinedClosed : P.analyticIndexDefined
  topologicalIndexDefinedClosed : P.topologicalIndexDefined
  indexEqualityClosed : P.indexEquality

theorem index_theorem_closed_from_evidence (P : IndexTheoremPackage) (E : IndexTheoremEvidence P) :
    IndexTheoremClosed P := by
  exact And.intro E.indexFormulaClosed (And.intro E.analyticIndexDefinedClosed (And.intro E.topologicalIndexDefinedClosed E.indexEqualityClosed))

end DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean
end HautevilleHouse