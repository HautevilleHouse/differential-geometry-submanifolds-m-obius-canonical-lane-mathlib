import DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean.CurvatureInvariants

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean

structure BoundaryBehavior where
  boundaryType : String
  compactWithoutBoundary : Prop
  cuspSingularity : Prop

def boundaryBehaviorClosed (B : BoundaryBehavior) : Prop :=
  B.compactWithoutBoundary ∧ B.cuspSingularity

structure EvolutionConstraint where
  ricciFlowAdmissible : Prop
  meanCurvatureFlowAdmissible : Prop
  singularityTimeFinite : Prop

def evolutionConstraintClosed (E : EvolutionConstraint) : Prop :=
  E.ricciFlowAdmissible ∧ E.meanCurvatureFlowAdmissible ∧ E.singularityTimeFinite

end DifferentialGeometrySubmanifoldsMObiusCanonicalLaneLean
end HautevilleHouse
