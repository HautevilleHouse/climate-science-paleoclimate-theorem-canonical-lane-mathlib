import canonicalLaneMathlib.AdmissibleClass
import ClimateSciencePaleoclimateTheoremCanonicalLaneLean.PaleoclimateAdmissibleClass
import ClimateSciencePaleoclimateTheoremCanonicalLaneLean.BridgeLemmas
import ClimateSciencePaleoclimateTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ClimateSciencePaleoclimateTheoremCanonicalLaneLean

def ConstrainedPaleoclimateClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_paleoclimate_endgame (A : AdmissibleClass) :
    ConstrainedPaleoclimateClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClimateSciencePaleoclimateTheoremCanonicalLaneLean
end HautevilleHouse
