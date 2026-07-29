import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean

structure SubmanifoldChartPackage where
  carrier : Type u
  topology : TopologicalSpace carrier
  smoothAtlas : Type v
  atlasCharts : List (Type* → Type*)
  chartTransitionSmooth : Prop
  dimensionN : Nat

def SubmanifoldChartClosed (P : SubmanifoldChartPackage) : Prop :=
  P.chartTransitionSmooth

structure SubmanifoldChartEvidence (P : SubmanifoldChartPackage) where
  chartTransitionSmoothClosed : P.chartTransitionSmooth

theorem submanifold_chart_closed_from_evidence (P : SubmanifoldChartPackage) (E : SubmanifoldChartEvidence P) :
    SubmanifoldChartClosed P := by
  exact E.chartTransitionSmoothClosed

end DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean
end HautevilleHouse