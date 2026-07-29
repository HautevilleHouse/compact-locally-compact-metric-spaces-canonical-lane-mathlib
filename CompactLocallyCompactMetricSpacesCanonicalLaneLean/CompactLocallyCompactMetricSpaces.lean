import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactLocallyCompactMetricSpacesCanonicalLaneLean

structure CompactLocallyCompactMetricSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  metric : MetricSpace carrier
  compact : CompactSpace carrier
  locallyCompact : LocallyCompactSpace carrier

/-- The admissible object is pinned to a compact locally compact metric space. -/
structure AdmissibleCompactLocallyCompactObject where
  space : CompactLocallyCompactMetricSpace
  bridgeCondition : Prop
  gateCondition : Prop

end CompactLocallyCompactMetricSpacesCanonicalLaneLean
end HautevilleHouse