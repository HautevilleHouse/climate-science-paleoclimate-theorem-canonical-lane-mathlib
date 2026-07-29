import canonicalLaneMathlib.AdmissibleClass
import ClimateSciencePaleoclimateTheoremCanonicalLaneLean.PaleoclimateBridgeLemmas

namespace HautevilleHouse
namespace ClimateSciencePaleoclimateTheoremCanonicalLaneLean

def gateClosed (A : PaleoclimateAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : PaleoclimateAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ClimateSciencePaleoclimateTheoremCanonicalLaneLean
end HautevilleHouse