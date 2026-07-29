import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean

structure GradientFormationPackage {M : MorphogenSourcePackage} (P : ReactionDiffusionPDEPackage M) where
  steadyStateExists : Prop
  spatialGradient : Prop
  gradientShape : Prop
  robustnessToPerturbations : Prop
  scalingProperty : Prop

structure GradientFormationEvidence {M : MorphogenSourcePackage} {P : ReactionDiffusionPDEPackage M}
    (G : GradientFormationPackage P) where
  steadyStateExistsClosed : G.steadyStateExists
  spatialGradientClosed : G.spatialGradient
  gradientShapeClosed : G.gradientShape
  robustnessToPerturbationsClosed : G.robustnessToPerturbations
  scalingPropertyClosed : G.scalingProperty

def GradientFormationClosed {M : MorphogenSourcePackage} {P : ReactionDiffusionPDEPackage M}
    (G : GradientFormationPackage P) : Prop :=
  G.steadyStateExists ∧ G.spatialGradient ∧ G.gradientShape ∧ G.robustnessToPerturbations ∧ G.scalingProperty

theorem gradient_formation_closed_from_evidence
    {M : MorphogenSourcePackage} {P : ReactionDiffusionPDEPackage M}
    (G : GradientFormationPackage P) (E : GradientFormationEvidence G) :
    GradientFormationClosed G := by
  exact And.intro E.steadyStateExistsClosed
    (And.intro E.spatialGradientClosed
      (And.intro E.gradientShapeClosed
        (And.intro E.robustnessToPerturbationsClosed E.scalingPropertyClosed)))

end DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean
end HautevilleHouse