import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateSciencePaleoclimateTheoremCanonicalLaneLean

structure BipolarSeesawPackage where
  antarcticIceCoreRecord : Prop
  greenlandAntarcticCorrelation : Prop
  oceanicTeleconnection : Prop
  heatRedistribution : Prop
  interhemisphericPhasing : Prop
  millennialScaleAntiphase : Prop

structure BipolarSeesawEvidence (B : BipolarSeesawPackage) where
  antarcticIceCoreRecordClosed : B.antarcticIceCoreRecord
  greenlandAntarcticCorrelationClosed : B.greenlandAntarcticCorrelation
  oceanicTeleconnectionClosed : B.oceanicTeleconnection
  heatRedistributionClosed : B.heatRedistribution
  interhemisphericPhasingClosed : B.interhemisphericPhasing
  millennialScaleAntiphaseClosed : B.millennialScaleAntiphase

def BipolarSeesawClosed (B : BipolarSeesawPackage) : Prop :=
  B.antarcticIceCoreRecord ∧ B.greenlandAntarcticCorrelation ∧
  B.oceanicTeleconnection ∧ B.heatRedistribution ∧
  B.interhemisphericPhasing ∧ B.millennialScaleAntiphase

theorem bipolar_seesaw_closed_from_evidence (B : BipolarSeesawPackage)
    (E : BipolarSeesawEvidence B) : BipolarSeesawClosed B := by
  exact And.intro E.antarcticIceCoreRecordClosed
    (And.intro E.greenlandAntarcticCorrelationClosed
      (And.intro E.oceanicTeleconnectionClosed
        (And.intro E.heatRedistributionClosed
          (And.intro E.interhemisphericPhasingClosed E.millennialScaleAntiphaseClosed))))

end ClimateSciencePaleoclimateTheoremCanonicalLaneLean
end HautevilleHouse