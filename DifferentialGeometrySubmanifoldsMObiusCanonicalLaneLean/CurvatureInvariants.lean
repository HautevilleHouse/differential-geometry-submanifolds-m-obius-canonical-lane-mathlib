import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean

structure CurvatureInvariantPackage (S : SubmanifoldPackage) where
  sectionalCurvature : Prop
  ricciCurvature : Prop
  scalarCurvature : Prop
  gaussCurvature : Prop
  meanCurvature : Prop

def CurvatureInvariantClosed (S : SubmanifoldPackage) (C : CurvatureInvariantPackage S) : Prop :=
  C.sectionalCurvature ∧ C.ricciCurvature ∧ C.scalarCurvature ∧ C.gaussCurvature ∧ C.meanCurvature

end DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean
end HautevilleHouse