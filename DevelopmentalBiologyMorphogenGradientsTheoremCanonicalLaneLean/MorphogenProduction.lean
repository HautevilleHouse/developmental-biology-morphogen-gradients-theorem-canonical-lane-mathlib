import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean

structure MorphogenProductionPackage (C : CellAdmissibleClass) where
  sourceCellType : Type u
  morphogenType : Type v
  productionRate : sourceCellType → morphogenType → ℝ
  inducible : Prop
  constitutive : Prop
  regulatedBySignal : Prop
  productionRatePositive : productionRate > 0

end DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean
end HautevilleHouse