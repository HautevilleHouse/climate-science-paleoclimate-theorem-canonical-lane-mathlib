import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateSciencePaleoclimateTheoremCanonicalLaneLean

structure IceCorePaleoclimateReconstructionPackage where
  coreLocations : List String
  depthAgeModel : ℝ → ℝ
  proxyRecords : ℝ → ℝ
  chronologicalControl : Prop
  proxyCalibration : Prop
  climateInterpretation : Prop

structure IceCorePaleoclimateReconstructionEvidence
    (R : IceCorePaleoclimateReconstructionPackage) where
  chronologicalControlClosed : R.chronologicalControl
  proxyCalibrationClosed : R.proxyCalibration
  climateInterpretationClosed : R.climateInterpretation

def IceCorePaleoclimateReconstructionClosed
    (R : IceCorePaleoclimateReconstructionPackage) : Prop :=
  R.chronologicalControl ∧ R.proxyCalibration ∧ R.climateInterpretation

theorem ice_core_paleoclimate_reconstruction_closed_from_evidence
    (R : IceCorePaleoclimateReconstructionPackage)
    (E : IceCorePaleoclimateReconstructionEvidence R) : IceCorePaleoclimateReconstructionClosed R := by
  exact And.intro E.chronologicalControlClosed
    (And.intro E.proxyCalibrationClosed E.climateInterpretationClosed)

end ClimateSciencePaleoclimateTheoremCanonicalLaneLean
end HautevilleHouse