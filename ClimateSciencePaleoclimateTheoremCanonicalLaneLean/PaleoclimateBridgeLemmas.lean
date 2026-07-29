import canonicalLaneMathlib.AdmissibleClass
import ClimateSciencePaleoclimateTheoremCanonicalLaneLean.PaleoclimateAdmissibleClass

namespace HautevilleHouse
namespace ClimateSciencePaleoclimateTheoremCanonicalLaneLean

def bridgeClosed (A : PaleoclimateAdmissibleClass) : Prop :=
  A.object.orbitalForcingApplied ∧ A.object.isotopicDataCalibrated ∧
  A.object.doEventsDetected ∧ A.object.ebmStabilized

theorem bridge_from_admissible_class (A : PaleoclimateAdmissibleClass) :
    bridgeClosed A := by
  have h : A.object.orbitalForcingApplied := by
    exact ?_
  sorry

end ClimateSciencePaleoclimateTheoremCanonicalLaneLean
end HautevilleHouse