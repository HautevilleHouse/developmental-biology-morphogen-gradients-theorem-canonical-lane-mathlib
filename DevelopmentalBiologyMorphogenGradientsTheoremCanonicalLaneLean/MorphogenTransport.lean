import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean

structure MorphogenTransportPackage where
  diffusionTensor : Type u
  advectionField : Type v
  extracellularMatrixBinding : Prop
  transportMechanismValid : Prop
  fluxConservation : Prop

structure MorphogenTransportEvidence (T : MorphogenTransportPackage) where
  diffusionTensorClosed : T.diffusionTensor
  advectionFieldClosed : T.advectionField
  extracellularMatrixBindingClosed : T.extracellularMatrixBinding
  transportMechanismValidClosed : T.transportMechanismValid
  fluxConservationClosed : T.fluxConservation

def MorphogenTransportClosed (T : MorphogenTransportPackage) : Prop :=
  T.diffusionTensor ∧ T.advectionField ∧ T.extracellularMatrixBinding ∧
  T.transportMechanismValid ∧ T.fluxConservation

theorem morphogen_transport_closed_from_evidence (T : MorphogenTransportPackage)
    (E : MorphogenTransportEvidence T) : MorphogenTransportClosed T := by
  exact And.intro E.diffusionTensorClosed
    (And.intro E.advectionFieldClosed
      (And.intro E.extracellularMatrixBindingClosed
        (And.intro E.transportMechanismValidClosed E.fluxConservationClosed)))

end DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean
end HautevilleHouse