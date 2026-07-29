import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean

structure DiffusionCoefficient (C : CellAdmissibleClass) where
  morphogenType : Type u
  extracellularSpace : Type v
  diffusionRate : morphogenType → extracellularSpace → ℝ
  isotropic : Prop
  anisotropic : Prop
  positiveDiffusion : diffusionRate > 0

structure TransportMechanism (C : CellAdmissibleClass) where
  directedTransport : Prop
  passiveDiffusion : Prop
  receptorMediated : Prop
  cellSurfaceBinding : Prop

end DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean
end HautevilleHouse