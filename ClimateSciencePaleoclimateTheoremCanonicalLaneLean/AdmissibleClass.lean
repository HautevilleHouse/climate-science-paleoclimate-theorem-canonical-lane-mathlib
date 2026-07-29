import ClimateSciencePaleoclimateTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ClimateSciencePaleoclimateTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : PaleoclimateAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  PaleoclimateWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClimateSciencePaleoclimateTheoremCanonicalLaneLean
end HautevilleHouse
