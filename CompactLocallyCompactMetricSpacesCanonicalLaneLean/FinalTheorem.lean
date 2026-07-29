import canonicalLaneMathlib.AdmissibleClass
import CompactLocallyCompactMetricSpacesCanonicalLaneLean.BridgeLemmas
import CompactLocallyCompactMetricSpacesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CompactLocallyCompactMetricSpacesCanonicalLaneLean

def ConstrainedCompactLocallyCompactMetricClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_compact_locally_compact_metric_endgame (A : AdmissibleClass) :
    ConstrainedCompactLocallyCompactMetricClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CompactLocallyCompactMetricSpacesCanonicalLaneLean
end HautevilleHouse