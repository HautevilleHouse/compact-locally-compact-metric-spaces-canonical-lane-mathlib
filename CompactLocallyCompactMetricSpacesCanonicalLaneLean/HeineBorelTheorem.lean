import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactLocallyCompactMetricSpacesCanonicalLaneLean

structure HeineBorelEvidence (M : MetricSpace) where
  closedBoundedImpliesCompact : ∀ (s : Set M), IsClosed s → Metric.Bounded s → IsCompact s

theorem heine_borel_closed (M : MetricSpace) (E : HeineBorelEvidence M) :
    ∀ (s : Set M), IsClosed s → Metric.Bounded s → IsCompact s :=
  E.closedBoundedImpliesCompact

end CompactLocallyCompactMetricSpacesCanonicalLaneLean
end HautevilleHouse