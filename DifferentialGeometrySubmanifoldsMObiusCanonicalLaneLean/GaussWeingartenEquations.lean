import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean

structure GaussWeingartenPackage {S : SubmanifoldPackage} where
  gaussFormula : Prop
  weingartenFormula : Prop
  secondFundamentalForm : Prop
  shapeOperator : Prop

def GaussWeingartenClosed {S : SubmanifoldPackage} (G : GaussWeingartenPackage S) : Prop :=
  G.gaussFormula ∧ G.weingartenFormula ∧ G.secondFundamentalForm ∧ G.shapeOperator

end DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean
end HautevilleHouse