import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean

structure ReceptorBinding (C : CellAdmissibleClass) where
  receptorType : Type u
  morphogenType : Type v
  bindingAffinity : ℝ
  dissociationConstant : ℝ
  bindingSaturation : Prop
  cooperativity : Prop

structure DownstreamSignaling (C : CellAdmissibleClass) where
  signalCascade : Type u
  transcriptionFactorActivation : Type v
  targetGeneExpression : Prop
  concentrationThreshold : ℝ
  gradientInterpretation : Prop

end DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean
end HautevilleHouse