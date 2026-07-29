import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateSciencePaleoclimateTheoremCanonicalLaneLean

structure MilankovitchCyclesPackage where
  eccentricity : ℝ
  obliquity : ℝ
  precession : ℝ
  insolationAnomaly : ℝ
  climateResponse : ℝ
  orbitalForcing : ℝ
  responseEquation : climateResponse = orbitalForcing * (eccentricity * 1000 + obliquity * 100 + precession * 10)
  orbitalForcingPositive : orbitalForcing > 0

structure MilankovitchCyclesEvidence (M : MilankovitchCyclesPackage) where
  eccentricityInRange : 0 ≤ M.eccentricity ∧ M.eccentricity ≤ 0.1
  obliquityInRange : 22 ≤ M.obliquity ∧ M.obliquity ≤ 25
  precessionInRange : 0 ≤ M.precession ∧ M.precession ≤ 360
  orbitalForcingDefined : M.orbitalForcing = 1.0
  responseEquationHolds : M.responseEquation

def MilankovitchCyclesClosed (M : MilankovitchCyclesPackage) : Prop :=
  M.responseEquation

theorem milankovitch_cycles_closed_from_evidence (M : MilankovitchCyclesPackage) (Ev : MilankovitchCyclesEvidence M) : MilankovitchCyclesClosed M :=
  Ev.responseEquationHolds

end ClimateSciencePaleoclimateTheoremCanonicalLaneLean
end HautevilleHouse