import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean

structure SubmanifoldPackage where
  ambientManifold : Type u
  submanifold : Type v
  embedding : submanifold → ambientManifold
  dimension : ℕ
  codimension : ℕ
  smoothEmbedding : Prop

def SubmanifoldClosed (S : SubmanifoldPackage) : Prop := S.smoothEmbedding

end DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean
end HautevilleHouse