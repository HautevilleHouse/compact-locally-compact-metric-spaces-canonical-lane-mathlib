import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactLocallyCompactMetricSpacesCanonicalLaneLean

structure ProperMap where
  source : CompactLocallyCompactMetricSpace
  target : CompactLocallyCompactMetricSpace
  map : source.carrier → target.carrier
  continuous : Continuous map

structure ProperMapPackage (A : AdmissibleCompactLocallyCompactObject) where
  properMapToPoint : ProperMap
  fiberCompact : Prop
  fiberCompactClosed : fiberCompact

theorem proper_map_fiber_compact (P : ProperMapPackage A) : P.fiberCompact := P.fiberCompactClosed

end CompactLocallyCompactMetricSpacesCanonicalLaneLean
end HautevilleHouse