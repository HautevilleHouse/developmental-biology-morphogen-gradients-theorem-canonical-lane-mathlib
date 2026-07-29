import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MorphogenGradientSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AdmittedMorphogenGradientObject where
  space : MorphogenGradientSpace
  gradientFieldExists : Prop
  morphogenConcentrationDefined : Prop
  gradientProfile : Type
  gradientReconstruction : Prop
  conclusion : gradientReconstruction

structure AdmissibleClass where
  object : AdmittedMorphogenGradientObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MorphogenGradientWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def MorphogenGradientWitnessClosed (O : AdmittedMorphogenGradientObject) : Prop :=
  O.gradientReconstruction

end DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean
end HautevilleHouse
