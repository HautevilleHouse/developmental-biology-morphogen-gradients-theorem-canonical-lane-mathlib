import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean

structure GradientStabilityPackage where
  perturbationAnalysis : Prop
  robustnessRange : Prop
  scalingLaw : Prop
  steadyStateExistence : Prop
  stabilityEstablished : Prop

structure GradientStabilityEvidence (S : GradientStabilityPackage) where
  perturbationAnalysisClosed : S.perturbationAnalysis
  robustnessRangeClosed : S.robustnessRange
  scalingLawClosed : S.scalingLaw
  steadyStateExistenceClosed : S.steadyStateExistence
  stabilityEstablishedClosed : S.stabilityEstablished

def GradientStabilityClosed (S : GradientStabilityPackage) : Prop :=
  S.perturbationAnalysis ∧ S.robustnessRange ∧ S.scalingLaw ∧
  S.steadyStateExistence ∧ S.stabilityEstablished

theorem gradient_stability_closed_from_evidence (S : GradientStabilityPackage)
    (E : GradientStabilityEvidence S) : GradientStabilityClosed S := by
  exact And.intro E.perturbationAnalysisClosed
    (And.intro E.robustnessRangeClosed
      (And.intro E.scalingLawClosed
        (And.intro E.steadyStateExistenceClosed E.stabilityEstablishedClosed)))

end DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean
end HautevilleHouse