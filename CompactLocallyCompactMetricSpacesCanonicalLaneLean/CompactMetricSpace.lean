import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactLocallyCompactMetricSpacesCanonicalLaneLean

structure CompactMetricSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  metric : MetricSpace carrier
  isCompact : CompactSpace carrier

structure CompactMetricSpaceEvidence (M : CompactMetricSpace) where
  compactClosed : M.isCompact

end CompactLocallyCompactMetricSpacesCanonicalLaneLean
end HautevilleHouse