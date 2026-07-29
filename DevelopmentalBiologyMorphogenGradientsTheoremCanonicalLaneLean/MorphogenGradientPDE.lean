import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean

structure MorphogenGradientPDEPackage where
  ligandConcentrationField : Type u
  receptorDensityField : Type v
  diffusionCoefficient : Prop
  degradationRate : Prop
  sourceProduction : Prop
  pdeSatisfied : Prop

structure MorphogenGradientPDEEvidence (M : MorphogenGradientPDEPackage) where
  diffusionCoefficientClosed : M.diffusionCoefficient
  degradationRateClosed : M.degradationRate
  sourceProductionClosed : M.sourceProduction
  pdeSatisfiedClosed : M.pdeSatisfied

def MorphogenGradientPDEClosed (M : MorphogenGradientPDEPackage) : Prop :=
  M.diffusionCoefficient ∧ M.degradationRate ∧ M.sourceProduction ∧ M.pdeSatisfied

theorem morphogen_gradient_pde_closed_from_evidence (M : MorphogenGradientPDEPackage)
    (E : MorphogenGradientPDEEvidence M) : MorphogenGradientPDEClosed M := by
  exact And.intro E.diffusionCoefficientClosed
    (And.intro E.degradationRateClosed
      (And.intro E.sourceProductionClosed E.pdeSatisfiedClosed))

end DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean
end HautevilleHouse