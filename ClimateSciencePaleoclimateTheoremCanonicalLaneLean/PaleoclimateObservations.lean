import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateSciencePaleoclimateTheoremCanonicalLaneLean

structure PaleoclimateObservation where
  observationType : String
  proxy : String
  timePeriod : Nat
  resolution : Float
  uncertainty : Float

def paleoclimateObservations : List PaleoclimateObservation := [
  { observationType := "isotopic_ratio", proxy := "ice_core", timePeriod := 800000, resolution := 100.0, uncertainty := 0.5 },
  { observationType := "pollen_count", proxy := "lake_sediment", timePeriod := 50000, resolution := 500.0, uncertainty := 10.0 },
  { observationType := "tree_ring_width", proxy := "dendrochronology", timePeriod := 10000, resolution := 1.0, uncertainty := 0.2 }
]

end ClimateSciencePaleoclimateTheoremCanonicalLaneLean
end HautevilleHouse
