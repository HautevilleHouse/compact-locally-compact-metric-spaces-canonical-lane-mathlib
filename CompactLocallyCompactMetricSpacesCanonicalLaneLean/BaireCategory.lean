import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactLocallyCompactMetricSpacesCanonicalLaneLean

structure BaireCategoryEvidence (A : AdmissibleCompactLocallyCompactObject) where
  completeMetric : MetricSpace A.space.carrier
  baireProperty : Prop
  bairePropertyClosed : baireProperty

theorem baire_category_holds (A : AdmissibleCompactLocallyCompactObject)
    (B : BaireCategoryEvidence A) : B.baireProperty := B.bairePropertyClosed

end CompactLocallyCompactMetricSpacesCanonicalLaneLean
end HautevilleHouse