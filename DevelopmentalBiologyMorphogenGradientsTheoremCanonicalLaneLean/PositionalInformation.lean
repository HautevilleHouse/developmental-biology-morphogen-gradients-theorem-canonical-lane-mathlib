import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean

structure PositionalIdentity (C : CellAdmissibleClass) where
  cellType : Type u
  positionAlongAxis : Type v
  morphogenConcentrationReadout : ℝ
  determinedFate : Prop
  concentrationThresholdBoundaries : Prop

structure MorphogenCode (C : CellAdmissibleClass) where
  multipleMorphogens : Type u
  combinatorialCode : Type v
  cellFateSpecification : Prop
  gradientCrossRegulation : Prop
  robustnessToPerturbations : Prop

end DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean
end HautevilleHouse