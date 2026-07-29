import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean

structure ReactionDiffusionPDEPackage (M : MorphogenSourcePackage) where
  concentrationField : Type u
  spatialDomain : Type v
  pdeEquation : Prop
  initialCondition : Prop
  boundaryCondition : Prop

structure ReactionDiffusionPDEEvidence {M : MorphogenSourcePackage} (P : ReactionDiffusionPDEPackage M) where
  pdeEquationClosed : P.pdeEquation
  initialConditionClosed : P.initialCondition
  boundaryConditionClosed : P.boundaryCondition

def ReactionDiffusionPDEClosed {M : MorphogenSourcePackage} (P : ReactionDiffusionPDEPackage M) : Prop :=
  P.pdeEquation ∧ P.initialCondition ∧ P.boundaryCondition

theorem reaction_diffusion_pde_closed_from_evidence {M : MorphogenSourcePackage} (P : ReactionDiffusionPDEPackage M) (E : ReactionDiffusionPDEEvidence P) :
    ReactionDiffusionPDEClosed P := by
  exact And.intro E.pdeEquationClosed (And.intro E.initialConditionClosed E.boundaryConditionClosed)

end DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean
end HautevilleHouse