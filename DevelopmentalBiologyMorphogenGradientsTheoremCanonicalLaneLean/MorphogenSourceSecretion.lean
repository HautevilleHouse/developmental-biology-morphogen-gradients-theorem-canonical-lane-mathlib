import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean

structure MorphogenSourcePackage where
  morphogenType : Type u
  sourceLocalization : Prop
  secretionRate : Prop
  diffusionCoefficient : Prop
  degradationRate : Prop
  synthesisRegulation : Prop

structure MorphogenSourceEvidence (M : MorphogenSourcePackage) where
  sourceLocalizationClosed : M.sourceLocalization
  secretionRateClosed : M.secretionRate
  diffusionCoefficientClosed : M.diffusionCoefficient
  degradationRateClosed : M.degradationRate
  synthesisRegulationClosed : M.synthesisRegulation

def MorphogenSourceClosed (M : MorphogenSourcePackage) : Prop :=
  M.sourceLocalization ∧ M.secretionRate ∧ M.diffusionCoefficient ∧ M.degradationRate ∧ M.synthesisRegulation

theorem morphogen_source_closed_from_evidence (M : MorphogenSourcePackage) (E : MorphogenSourceEvidence M) :
    MorphogenSourceClosed M := by
  exact And.intro E.sourceLocalizationClosed
    (And.intro E.secretionRateClosed
      (And.intro E.diffusionCoefficientClosed
        (And.intro E.degradationRateClosed E.synthesisRegulationClosed)))

end DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean
end HautevilleHouse