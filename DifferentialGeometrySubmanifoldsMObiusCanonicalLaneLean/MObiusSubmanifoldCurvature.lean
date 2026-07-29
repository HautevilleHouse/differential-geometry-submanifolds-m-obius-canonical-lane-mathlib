import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean

structure MObiusSubmanifoldCurvaturePackage where
  ambientManifold : Type u
  ambientTopology : TopologicalSpace ambientManifold
  submanifold : Type v
  submanifoldTopology : TopologicalSpace submanifold
  embedding : submanifold → ambientManifold
  inducedMetric : Type w
  secondFundamentalForm : Type x
  shapeOperator : Type y
  normalBundle : Type z
  gaussCurvature : Type a
  meanCurvature : Type b

structure MObiusSubmanifoldCurvatureEvidence (G : MObiusSubmanifoldCurvaturePackage) where
  embeddingSmoothClosed : Prop
  inducedMetricClosed : Prop
  secondFundamentalFormClosed : Prop
  shapeOperatorClosed : Prop
  normalBundleClosed : Prop
  gaussCurvatureClosed : Prop
  meanCurvatureClosed : Prop

def MObiusSubmanifoldCurvatureClosed (G : MObiusSubmanifoldCurvaturePackage) : Prop :=
  G.embeddingSmooth ∧ G.inducedMetricDefined ∧ G.secondFundamentalFormDefined ∧
  G.shapeOperatorDefined ∧ G.normalBundleDefined ∧ G.gaussCurvatureDefined ∧ G.meanCurvatureDefined

theorem mobius_submanifold_curvature_closed_from_evidence (G : MObiusSubmanifoldCurvaturePackage) (E : MObiusSubmanifoldCurvatureEvidence G) :
    MObiusSubmanifoldCurvatureClosed G := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ ?_)))))
  · exact E.embeddingSmoothClosed
  · exact E.inducedMetricClosed
  · exact E.secondFundamentalFormClosed
  · exact E.shapeOperatorClosed
  · exact E.normalBundleClosed
  · exact E.gaussCurvatureClosed
  · exact E.meanCurvatureClosed

end DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean
end HautevilleHouse
