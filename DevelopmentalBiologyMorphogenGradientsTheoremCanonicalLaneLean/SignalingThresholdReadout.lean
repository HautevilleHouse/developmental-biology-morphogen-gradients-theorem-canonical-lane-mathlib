import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean

structure SignalingThresholdReadoutPackage where
  thresholdConcentration : ℝ
  targetGeneActivation : Prop
  positionalIdentity : Prop
  thresholdConcentrationTerm : thresholdConcentration
  targetGeneActivationTerm : targetGeneActivation
  positionalIdentityTerm : positionalIdentity

structure SignalingThresholdReadoutEvidence (S : SignalingThresholdReadoutPackage) where
  targetGeneActivationClosed : S.targetGeneActivation
  positionalIdentityClosed : S.positionalIdentity

def SignalingThresholdReadoutClosed (S : SignalingThresholdReadoutPackage) : Prop :=
  S.targetGeneActivation ∧ S.positionalIdentity

theorem signaling_threshold_readout_closed_from_evidence
    (S : SignalingThresholdReadoutPackage) (E : SignalingThresholdReadoutEvidence S) :
    SignalingThresholdReadoutClosed S := by
  exact And.intro E.targetGeneActivationClosed E.positionalIdentityClosed

end DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean
end HautevilleHouse
