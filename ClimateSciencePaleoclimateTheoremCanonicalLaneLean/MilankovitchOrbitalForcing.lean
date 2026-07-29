import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateSciencePaleoclimateTheoremCanonicalLaneLean

structure OrbitalParameters where
  obliquity : ℝ
  eccentricity : ℝ
  precession : ℝ

structure MilankovitchOrbitalForcingPackage where
  orbitalParameters : OrbitalParameters
  insolationCurve : ℝ → ℝ
  summerInsolationAnomaly : Prop
  precessionIndex : Prop
  obliquityAmplitude : Prop

structure MilankovitchOrbitalForcingEvidence (M : MilankovitchOrbitalForcingPackage) where
  summerInsolationAnomalyClosed : M.summerInsolationAnomaly
  precessionIndexClosed : M.precessionIndex
  obliquityAmplitudeClosed : M.obliquityAmplitude

def MilankovitchOrbitalForcingClosed (M : MilankovitchOrbitalForcingPackage) : Prop :=
  M.summerInsolationAnomaly ∧ M.precessionIndex ∧ M.obliquityAmplitude

theorem milankovitch_orbital_forcing_closed_from_evidence
    (M : MilankovitchOrbitalForcingPackage)
    (E : MilankovitchOrbitalForcingEvidence M) : MilankovitchOrbitalForcingClosed M := by
  exact And.intro E.summerInsolationAnomalyClosed
    (And.intro E.precessionIndexClosed E.obliquityAmplitudeClosed)

end ClimateSciencePaleoclimateTheoremCanonicalLaneLean
end HautevilleHouse