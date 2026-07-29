import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean

open HautevilleHouse.DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean

def bridgeClosed (A : DevelopmentalAdmissibleClass) : Prop :=
  MorphogenGradientClosed A.object.morphogenModel

theorem bridge_from_admissible_class (A : DevelopmentalAdmissibleClass) : bridgeClosed A :=
  A.object.evidence

end DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean
end HautevilleHouse