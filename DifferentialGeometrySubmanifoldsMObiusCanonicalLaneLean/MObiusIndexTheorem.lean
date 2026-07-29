import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean

structure MObiusIndexTheoremPackage where
  submanifoldType : Type u
  embedding : Type v
  eulerCharacteristic : Prop
  gaussBonnetIntegrand : Type w
  chernClasses : Type x
  pontryaginClasses : Type y
  indexTheoremStatement : Prop

structure MObiusIndexTheoremEvidence (I : MObiusIndexTheoremPackage) where
  eulerCharacteristicClosed : Prop
  gaussBonnetIntegrandClosed : Prop
  chernClassesClosed : Prop
  pontryaginClassesClosed : Prop
  indexTheoremStatementClosed : Prop

def MObiusIndexTheoremClosed (I : MObiusIndexTheoremPackage) : Prop :=
  I.eulerCharacteristic ∧ I.gaussBonnetIntegrand ∧ I.chernClasses ∧ I.pontryaginClasses ∧ I.indexTheoremStatement

theorem mobius_index_theorem_closed_from_evidence (I : MObiusIndexTheoremPackage) (E : MObiusIndexTheoremEvidence I) :
    MObiusIndexTheoremClosed I := by
  refine And.intro E.eulerCharacteristicClosed (And.intro E.gaussBonnetIntegrandClosed (And.intro E.chernClassesClosed (And.intro E.pontryaginClassesClosed E.indexTheoremStatementClosed)))

end DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean
end HautevilleHouse
