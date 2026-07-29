import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SubmanifoldClosed A.object.submanifoldPackage

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.submanifoldPackage.smoothEmbedding

end DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean
end HautevilleHouse