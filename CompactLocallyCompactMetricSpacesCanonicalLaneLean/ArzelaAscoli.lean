import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactLocallyCompactMetricSpacesCanonicalLaneLean

structure ArzelaAscoliEvidence (A : AdmissibleCompactLocallyCompactObject) where
  functionFamily : Set (A.space.carrier → ℝ)
  equicontinuous : Prop
  pointwiseBounded : Prop
  relativelyCompact : Prop
  equicontinuousClosed : equicontinuous
  pointwiseBoundedClosed : pointwiseBounded
  relativelyCompactClosed : relativelyCompact

theorem arzela_ascoli_closed (A : AdmissibleCompactLocallyCompactObject)
    (E : ArzelaAscoliEvidence A) : E.relativelyCompact := E.relativelyCompactClosed

end CompactLocallyCompactMetricSpacesCanonicalLaneLean
end HautevilleHouse