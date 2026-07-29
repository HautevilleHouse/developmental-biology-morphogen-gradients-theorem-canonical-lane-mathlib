import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean

structure ReceptorDynamicsPackage where
  bindingAffinity : Prop
  signalTransductionRate : Prop
  receptorSaturation : Prop
  feedbackRegulation : Prop
  dynamicsConsistent : Prop

structure ReceptorDynamicsEvidence (R : ReceptorDynamicsPackage) where
  bindingAffinityClosed : R.bindingAffinity
  signalTransductionRateClosed : R.signalTransductionRate
  receptorSaturationClosed : R.receptorSaturation
  feedbackRegulationClosed : R.feedbackRegulation
  dynamicsConsistentClosed : R.dynamicsConsistent

def ReceptorDynamicsClosed (R : ReceptorDynamicsPackage) : Prop :=
  R.bindingAffinity ∧ R.signalTransductionRate ∧ R.receptorSaturation ∧
  R.feedbackRegulation ∧ R.dynamicsConsistent

theorem receptor_dynamics_closed_from_evidence (R : ReceptorDynamicsPackage)
    (E : ReceptorDynamicsEvidence R) : ReceptorDynamicsClosed R := by
  exact And.intro E.bindingAffinityClosed
    (And.intro E.signalTransductionRateClosed
      (And.intro E.receptorSaturationClosed
        (And.intro E.feedbackRegulationClosed E.dynamicsConsistentClosed)))

end DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean
end HautevilleHouse