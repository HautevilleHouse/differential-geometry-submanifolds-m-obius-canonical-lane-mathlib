import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean

structure MObiusGeometryPackage (S : SubmanifoldPackage) where
  mobiusTransformationInvariant : Prop
  conformalStructure : Prop
  inversionMap : Prop
  spherePreserving : Prop

def MObiusGeometryClosed (S : SubmanifoldPackage) (M : MObiusGeometryPackage S) : Prop :=
  M.mobiusTransformationInvariant ∧ M.conformalStructure ∧ M.inversionMap ∧ M.spherePreserving

end DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean
end HautevilleHouse