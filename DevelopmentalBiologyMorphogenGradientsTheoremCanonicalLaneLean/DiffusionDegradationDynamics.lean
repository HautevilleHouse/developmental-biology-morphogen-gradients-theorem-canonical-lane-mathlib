import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean

structure DiffusionDegradationPackage where
  diffusionCoefficient : ℝ
  degradationRate : ℝ
  pdeType : String
  wellPosed : Prop
  solutionUnique : Prop
  wellPosedTerm : wellPosed
  solutionUniqueTerm : solutionUnique

structure DiffusionDegradationEvidence (D : DiffusionDegradationPackage) where
  wellPosedClosed : D.wellPosed
  solutionUniqueClosed : D.solutionUnique

def DiffusionDegradationClosed (D : DiffusionDegradationPackage) : Prop :=
  D.wellPosed ∧ D.solutionUnique

theorem diffusion_degradation_closed_from_evidence
    (D : DiffusionDegradationPackage) (E : DiffusionDegradationEvidence D) :
    DiffusionDegradationClosed D := by
  exact And.intro E.wellPosedClosed E.solutionUniqueClosed

end DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean
end HautevilleHouse
