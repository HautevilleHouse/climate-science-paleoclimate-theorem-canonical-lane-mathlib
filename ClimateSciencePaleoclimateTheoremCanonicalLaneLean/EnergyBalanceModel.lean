import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateSciencePaleoclimateTheoremCanonicalLaneLean

structure EnergyBalanceModelPackage where
  solarInsolation : ℕ → ℝ
  albedo : ℝ
  greenhouseForcing : ℝ
  heatCapacity : ℝ
  diffusionCoeff : ℝ
  temperature : ℕ → ℝ
  equilibriumEquation : ∀ t : ℕ, temperature (t+1) = temperature t + (solarInsolation t * (1 - albedo) - greenhouseForcing * temperature t) / heatCapacity + diffusionCoeff * (temperature (t+1) - 2 * temperature t + temperature (t-1))

structure EnergyBalanceModelEvidence (E : EnergyBalanceModelPackage) where
  solarInsolationDefined : E.solarInsolation 0 = 1361
  albedoInRange : 0 ≤ E.albedo ∧ E.albedo ≤ 1
  diffusionPositive : E.diffusionCoeff > 0
  heatCapacityPositive : E.heatCapacity > 0
  equilibriumHolds : E.equilibriumEquation 0

def EnergyBalanceClosed (E : EnergyBalanceModelPackage) : Prop :=
  E.equilibriumEquation 0

theorem energy_balance_closed_from_evidence (E : EnergyBalanceModelPackage) (Ev : EnergyBalanceModelEvidence E) : EnergyBalanceClosed E :=
  Ev.equilibriumHolds

end ClimateSciencePaleoclimateTheoremCanonicalLaneLean
end HautevilleHouse