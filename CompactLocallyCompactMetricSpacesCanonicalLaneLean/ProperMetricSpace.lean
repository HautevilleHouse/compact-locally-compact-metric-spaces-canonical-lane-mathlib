import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactLocallyCompactMetricSpacesCanonicalLaneLean

structure ProperMetricSpace (M : MetricSpace) where
  properClosedBalls : ∀ (x : M) (r : ℝ), IsCompact (Metric.closedBall x r)

theorem proper_implies_locally_compact (M : MetricSpace) (P : ProperMetricSpace M) :
    LocallyCompactSpace M := by
  refine LocallyCompactSpace.of_closedBall_compact (fun x r => P.properClosedBalls x r)

structure ProperMetricSpaceEvidence (M : MetricSpace) (P : ProperMetricSpace M) where
  properClosedBallsClosed : P.properClosedBalls

end CompactLocallyCompactMetricSpacesCanonicalLaneLean
end HautevilleHouse