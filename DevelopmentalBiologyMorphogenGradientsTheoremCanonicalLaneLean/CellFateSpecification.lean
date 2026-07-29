import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean

structure CellFateSpecificationPackage {M : MorphogenSourcePackage} {P : ReactionDiffusionPDEPackage M} {G : GradientFormationPackage} where
  thresholdResponse : Prop
  targetGeneActivation : Prop
  cellDifferentiation : Prop

structure CellFateSpecificationEvidence {M : MorphogenSourcePackage} {P : ReactionDiffusionPDEPackage M} {G : GradientFormationPackage} (C : CellFateSpecificationPackage) where
  thresholdResponseClosed : C.thresholdResponse
  targetGeneActivationClosed : C.targetGeneActivation
  cellDifferentiationClosed : C.cellDifferentiation

def CellFateSpecificationClosed {M : MorphogenSourcePackage} {P : ReactionDiffusionPDEPackage M} {G : GradientFormationPackage} (C : CellFateSpecificationPackage) : Prop :=
  C.thresholdResponse ∧ C.targetGeneActivation ∧ C.cellDifferentiation

theorem cell_fate_specification_closed_from_evidence {M : MorphogenSourcePackage} {P : ReactionDiffusionPDEPackage M} {G : GradientFormationPackage} (C : CellFateSpecificationPackage) (E : CellFateSpecificationEvidence C) :
    CellFateSpecificationClosed C := by
  exact And.intro E.thresholdResponseClosed (And.intro E.targetGeneActivationClosed E.cellDifferentiationClosed)

end DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean
end HautevilleHouse