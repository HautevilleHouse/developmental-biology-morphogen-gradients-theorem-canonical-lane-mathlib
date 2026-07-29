import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean

structure MorphogenGradientModel where
  synthesisRate : Type u
  diffusionCoefficient : Type v
  degradationRate : Type w
  sourceConcentration : Type x
  concentrationField : Type y
  steadyStateSolution : Prop
  exponentialProfile : Prop
  sourceAtBoundary : Prop
  gradientDecayLength : Prop
  modelClosed : Prop

def MorphogenGradientClosed (M : MorphogenGradientModel) : Prop :=
  M.steadyStateSolution ∧ M.exponentialProfile ∧ M.sourceAtBoundary ∧ M.gradientDecayLength

end DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean
end HautevilleHouse