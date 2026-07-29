import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean

structure AdmittedDevelopmentalObject where
  morphogenModel : MorphogenGradientModel
  evidence : MorphogenGradientClosed morphogenModel

structure AdmissibleGeneRegulation where
  morphogen : AdmittedDevelopmentalObject
  targetGeneActivation : Prop
  thresholdSensing : Prop
  spatialPatternFormed : Prop
  geneExpressionDomain : Prop
  regulationEvidence : targetGeneActivation ∧ thresholdSensing ∧ spatialPatternFormed ∧ geneExpressionDomain

structure DevelopmentalAdmissibleClass where
  object : AdmittedDevelopmentalObject
  geneRegulation : AdmissibleGeneRegulation
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : DevelopmentalAdmissibleClass) : Prop :=
  MorphogenGradientClosed A.object.morphogenModel ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean
end HautevilleHouse