import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateSciencePaleoclimateTheoremCanonicalLaneLean

structure IsotopicPaleothermometryPackage where
  deltaO18Core : ℝ
  deltaO18Seawater : ℝ
  temperature : ℝ
  fractionationEquation : ℝ
  calibrationConstant : ℝ
  temperatureEquation : temperature = calibrationConstant * (deltaO18Core - deltaO18Seawater) + 16.9
  calibrationConstantPositive : calibrationConstant > 0

structure IsotopicPaleothermometryEvidence (I : IsotopicPaleothermometryPackage) where
  deltaO18CoreMeasured : I.deltaO18Core ∈ Set.Icc (-5) 5
  deltaO18SeawaterEstimated : I.deltaO18Seawater = -1.0
  calibrationValid : I.calibrationConstant = 4.8
  temperatureEquationHolds : I.temperatureEquation

def IsotopicPaleothermometryClosed (I : IsotopicPaleothermometryPackage) : Prop :=
  I.temperatureEquation

theorem isotopic_paleothermometry_closed_from_evidence (I : IsotopicPaleothermometryPackage) (Ev : IsotopicPaleothermometryEvidence I) : IsotopicPaleothermometryClosed I :=
  Ev.temperatureEquationHolds

end ClimateSciencePaleoclimateTheoremCanonicalLaneLean
end HautevilleHouse