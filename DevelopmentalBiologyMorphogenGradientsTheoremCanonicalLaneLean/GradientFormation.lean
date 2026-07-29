import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean

structure SourceDecayGradient (C : CellAdmissibleClass) where
  sourceLocation : Type u
  gradient : sourceLocation → ℝ
  decayRate : ℝ
  sourceStrength : ℝ
  gradientSlopeMonotonic : Prop
  gradientReadoutAccuracy : Prop

structure GradientAmplitude (C : CellAdmissibleClass) where
  morphogenConcentration : Type u
  position : Type v
  amplitude : morphogenConcentration → position → ℝ
  thresholdForResponse : ℝ
  spatialRange : ℝ

end DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean
end HautevilleHouse