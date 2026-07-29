import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean

open HautevilleHouse.DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean

def ConstrainedDevelopmentalBiologyClosure (A : DevelopmentalAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_developmental_biology_endgame (A : DevelopmentalAdmissibleClass) : ConstrainedDevelopmentalBiologyClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean
end HautevilleHouse