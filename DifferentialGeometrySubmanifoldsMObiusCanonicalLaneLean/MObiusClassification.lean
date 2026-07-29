import DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean.SubmanifoldStructure

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean

structure MObiusInvariant where
  codimensionOne : Prop
  conformalStructure : Prop
  invariantUnderFlow : Prop

def mObiusInvariantClosed (M : MObiusInvariant) : Prop :=
  M.codimensionOne ∧ M.conformalStructure ∧ M.invariantUnderFlow

structure MObiusClassification where
  invariant : MObiusInvariant
  submanifold : SubmanifoldStructure
  classificationProof : Prop

def mobiusClassificationClosed (C : MObiusClassification) : Prop :=
  mObiusInvariantClosed C.invariant ∧ submanifoldClosure C.submanifold ∧ C.classificationProof

end DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean
end HautevilleHouse
