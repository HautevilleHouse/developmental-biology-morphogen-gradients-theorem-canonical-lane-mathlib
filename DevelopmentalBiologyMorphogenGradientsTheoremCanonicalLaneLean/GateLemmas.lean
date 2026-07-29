import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean

open HautevilleHouse.DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean

def gateClosed (A : DevelopmentalAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : DevelopmentalAdmissibleClass) : gateClosed A :=
  A.gateWitness

end DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean
end HautevilleHouse