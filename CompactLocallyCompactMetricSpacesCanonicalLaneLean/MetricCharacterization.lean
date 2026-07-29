import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactLocallyCompactMetricSpacesCanonicalLaneLean

structure MetricCharacterizationPackage (A : AdmissibleCompactLocallyCompactObject) where
  metricComplete : Prop
  metricTotallyBounded : Prop
  metricCompleteClosed : metricComplete
  metricTotallyBoundedClosed : metricTotallyBounded

structure MetricCharacterizationEvidence (A : AdmissibleCompactLocallyCompactObject)
    (M : MetricCharacterizationPackage A) where
  completeTotallyBoundedClosed : M.metricComplete ∧ M.metricTotallyBounded

theorem metric_characterization_closed (A : AdmissibleCompactLocallyCompactObject)
    (M : MetricCharacterizationPackage A) (E : MetricCharacterizationEvidence A M) :
    M.metricComplete ∧ M.metricTotallyBounded := E.completeTotallyBoundedClosed

end CompactLocallyCompactMetricSpacesCanonicalLaneLean
end HautevilleHouse