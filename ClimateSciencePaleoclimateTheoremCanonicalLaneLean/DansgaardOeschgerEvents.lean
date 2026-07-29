import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateSciencePaleoclimateTheoremCanonicalLaneLean

structure DansgaardOeschgerEventsPackage where
  temperatureAnomaly : ℕ → ℝ
  eventThreshold : ℝ
  eventStart : ℕ
  eventEnd : ℕ
  eventDetected : Prop
  anomalyExceedsThreshold : ∀ t : ℕ, eventStart ≤ t ∧ t ≤ eventEnd → temperatureAnomaly t ≥ eventThreshold
  durationCondition : eventEnd - eventStart ≥ 10

structure DansgaardOeschgerEventsEvidence (D : DansgaardOeschgerEventsPackage) where
  temperatureDataContinuous : ∀ t : ℕ, -50 < D.temperatureAnomaly t ∧ D.temperatureAnomaly t < 50
  thresholdPositive : D.eventThreshold > 0
  anomalyExceedsThresholdHolds : D.anomalyExceedsThreshold
  durationConditionHolds : D.durationCondition

def DansgaardOeschgerEventsClosed (D : DansgaardOeschgerEventsPackage) : Prop :=
  D.eventDetected

theorem dansgaard_oeschger_events_closed_from_evidence (D : DansgaardOeschgerEventsPackage) (Ev : DansgaardOeschgerEventsEvidence D) : DansgaardOeschgerEventsClosed D :=
  Ev.anomalyExceedsThresholdHolds

end ClimateSciencePaleoclimateTheoremCanonicalLaneLean
end HautevilleHouse