import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean

structure GradientFormationSteadyStatePackage where
  concentrationProfile : Type u
  steadyStateCondition : Prop
  exponentialDecayLength : ℝ
  profileMonotonic : Prop
  steadyStateConditionTerm : steadyStateCondition
  profileMonotonicTerm : profileMonotonic

structure GradientFormationSteadyStateEvidence (G : GradientFormationSteadyStatePackage) where
  steadyStateConditionClosed : G.steadyStateCondition
  profileMonotonicClosed : G.profileMonotonic

def GradientFormationSteadyStateClosed (G : GradientFormationSteadyStatePackage) : Prop :=
  G.steadyStateCondition ∧ G.profileMonotonic

theorem gradient_formation_steady_state_closed_from_evidence
    (G : GradientFormationSteadyStatePackage) (E : GradientFormationSteadyStateEvidence G) :
    GradientFormationSteadyStateClosed G := by
  exact And.intro E.steadyStateConditionClosed E.profileMonotonicClosed

end DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean
end HautevilleHouse
