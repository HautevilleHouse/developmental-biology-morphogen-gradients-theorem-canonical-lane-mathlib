import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean

structure MorphogenGradientAnalyticFoundation where
  sourcePackage : MorphogenSourcePackage
  sourceEvidence : MorphogenSourceEvidence sourcePackage
  pdePackage : ReactionDiffusionPDEPackage sourcePackage
  pdeEvidence : ReactionDiffusionPDEEvidence pdePackage
  gradientPackage : GradientFormationPackage pdePackage
  gradientEvidence : GradientFormationEvidence gradientPackage
  cellFatePackage : CellFateSpecificationPackage gradientPackage
  cellFateEvidence : CellFateSpecificationEvidence cellFatePackage

def MorphogenGradientAnalyticFoundationClosed (A : MorphogenGradientAnalyticFoundation) : Prop :=
  MorphogenSourceClosed A.sourcePackage ∧
  ReactionDiffusionPDEClosed A.pdePackage ∧
  GradientFormationClosed A.gradientPackage ∧
  CellFateSpecificationClosed A.cellFatePackage

theorem morphogen_gradient_analytic_foundation_closed_from_evidence (A : MorphogenGradientAnalyticFoundation) :
    MorphogenGradientAnalyticFoundationClosed A := by
  exact And.intro (morphogen_source_closed_from_evidence A.sourcePackage A.sourceEvidence)
    (And.intro (reaction_diffusion_pde_closed_from_evidence A.pdePackage A.pdeEvidence)
      (And.intro (gradient_formation_closed_from_evidence A.gradientPackage A.gradientEvidence)
        (cell_fate_specification_closed_from_evidence A.cellFatePackage A.cellFateEvidence)))

end DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean
end HautevilleHouse