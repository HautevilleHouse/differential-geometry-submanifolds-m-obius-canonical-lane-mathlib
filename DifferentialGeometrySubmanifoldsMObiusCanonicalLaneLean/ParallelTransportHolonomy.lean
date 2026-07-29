import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean

structure ParallelTransportPackage (S : SubmanifoldPackage) where
  connection : Prop
  parallelSections : Prop
  holonomyGroup : Prop
  curvatureInterpretation : Prop

def ParallelTransportClosed (S : SubmanifoldPackage) (P : ParallelTransportPackage S) : Prop :=
  P.connection ∧ P.parallelSections ∧ P.holonomyGroup ∧ P.curvatureInterpretation

end DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean
end HautevilleHouse