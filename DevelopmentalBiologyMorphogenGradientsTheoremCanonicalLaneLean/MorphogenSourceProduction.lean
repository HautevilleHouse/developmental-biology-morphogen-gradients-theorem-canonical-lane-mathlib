import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean

structure MorphogenSourcePackage where
  sourceCellType : Type u
  secretionRate : Type v
  morphogenMolecule : Type w
  productionActive : Prop
  diffusionCoefficient : Prop
  degradationRate : Prop

structure MorphogenSourceEvidence (M : MorphogenSourcePackage) where
  productionActiveClosed : M.productionActive
  diffusionCoefficientClosed : M.diffusionCoefficient
  degradationRateClosed : M.degradationRate

def MorphogenSourceClosed (M : MorphogenSourcePackage) : Prop :=
  M.productionActive ∧ M.diffusionCoefficient ∧ M.degradationRate

theorem morphogen_source_closed_from_evidence (M : MorphogenSourcePackage) (E : MorphogenSourceEvidence M) :
    MorphogenSourceClosed M := by
  exact And.intro E.productionActiveClosed (And.intro E.diffusionCoefficientClosed E.degradationRateClosed)

end DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean
end HautevilleHouse