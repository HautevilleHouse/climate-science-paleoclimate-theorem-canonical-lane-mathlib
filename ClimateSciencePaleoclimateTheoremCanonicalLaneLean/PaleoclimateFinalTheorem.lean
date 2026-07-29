import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.BridgeLemmas
import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace ClimateSciencePaleoclimateTheoremCanonicalLaneLean

open HautevilleHouse.ClimateSciencePaleoclimateTheoremCanonicalLaneLean

def ConstrainedPaleoclimateClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_paleoclimate_endgame (A : AdmissibleClass) : ConstrainedPaleoclimateClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClimateSciencePaleoclimateTheoremCanonicalLaneLean
end HautevilleHouse
