import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactLocallyCompactMetricSpacesCanonicalLaneLean

structure CompactLocallyCompactMetricSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  metric : MetricSpace carrier
  compact : CompactSpace carrier
  locallyCompact : LocallyCompactSpace carrier

structure CompactLocallyCompactMetricSpaceAdmittedObject where
  space : CompactLocallyCompactMetricSpace
  conclusion : Prop

def CompactLocallyCompactMetricSpaceWitnessClosed (O : CompactLocallyCompactMetricSpaceAdmittedObject) : Prop :=
  O.conclusion

end CompactLocallyCompactMetricSpacesCanonicalLaneLean
end HautevilleHouse