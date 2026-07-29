import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean

structure SignalingThresholdPackage {M : MorphogenSourcePackage} (G : GradientFormationPackage (P := default)) where
  targetGeneActivation : Prop
  morphogenConcentrationThreshold : Prop
  downstreamSignaling : Prop
  cellResponseDynamics : Prop
  feedbackRegulation : Prop
  thresholdDetectionClosed : Prop

structure SignalingThresholdEvidence {M : MorphogenSourcePackage} {G : GradientFormationPackage (P := default)}
    (S : SignalingThresholdPackage G) where
  targetGeneActivationClosed : S.targetGeneActivation
  morphogenConcentrationThresholdClosed : S.morphogenConcentrationThreshold
  downstreamSignalingClosed : S.downstreamSignaling
  cellResponseDynamicsClosed : S.cellResponseDynamics
  feedbackRegulationClosed : S.feedbackRegulation
  thresholdDetectionClosedClosed : S.thresholdDetectionClosed

def SignalingThresholdClosed {M : MorphogenSourcePackage} {G : GradientFormationPackage (P := default)}
    (S : SignalingThresholdPackage G) : Prop :=
  S.targetGeneActivation ∧ S.morphogenConcentrationThreshold ∧ S.downstreamSignaling ∧
  S.cellResponseDynamics ∧ S.feedbackRegulation ∧ S.thresholdDetectionClosed

theorem signaling_threshold_closed_from_evidence
    {M : MorphogenSourcePackage} {G : GradientFormationPackage (P := default)}
    (S : SignalingThresholdPackage G) (E : SignalingThresholdEvidence S) :
    SignalingThresholdClosed S := by
  exact And.intro E.targetGeneActivationClosed
    (And.intro E.morphogenConcentrationThresholdClosed
      (And.intro E.downstreamSignalingClosed
        (And.intro E.cellResponseDynamicsClosed
          (And.intro E.feedbackRegulationClosed E.thresholdDetectionClosedClosed))))

end DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean
end HautevilleHouse