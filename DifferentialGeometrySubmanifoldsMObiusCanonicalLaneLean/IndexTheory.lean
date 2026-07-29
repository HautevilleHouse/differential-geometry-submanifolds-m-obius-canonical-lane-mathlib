import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MöbiusSubmanifoldsCanonicalLaneLean

structure IndexTheoryPackage where
  ellipticOperator : Prop
  indexTheorem : Prop
  atiyahSinger : Prop
  chernWeil : Prop

structure IndexTheoryEvidence (I : IndexTheoryPackage) where
  ellipticOperatorClosed : I.ellipticOperator
  indexTheoremClosed : I.indexTheorem
  atiyahSingerClosed : I.atiyahSinger
  chernWeilClosed : I.chernWeil

def IndexTheoryClosed (I : IndexTheoryPackage) : Prop :=
  I.ellipticOperator ∧ I.indexTheorem ∧ I.atiyahSinger ∧ I.chernWeil

theorem index_theory_closed_from_evidence (I : IndexTheoryPackage) (E : IndexTheoryEvidence I) :
    IndexTheoryClosed I := by
  exact And.intro E.ellipticOperatorClosed
    (And.intro E.indexTheoremClosed
      (And.intro E.atiyahSingerClosed E.chernWeilClosed))

end MöbiusSubmanifoldsCanonicalLaneLean
end HautevilleHouse
