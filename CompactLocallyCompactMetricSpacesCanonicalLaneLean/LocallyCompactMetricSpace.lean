import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactLocallyCompactMetricSpacesCanonicalLaneLean

structure LocallyCompactMetricSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  metric : MetricSpace carrier
  locallyCompact : LocallyCompactSpace carrier

structure LocallyCompactMetricSpaceEvidence (M : LocallyCompactMetricSpace) where
  locallyCompactClosed : M.locallyCompact

end CompactLocallyCompactMetricSpacesCanonicalLaneLean
end HautevilleHouse