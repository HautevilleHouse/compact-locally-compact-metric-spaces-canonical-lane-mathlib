import canonicalLaneMathlib.AdmissibleClass

/-!
# Manifold on a Noncompact Metric Space Package
-/

namespace HautevilleHouse
namespace CompactLocallyCompactMetricSpacesCanonicalLaneLean

structure ManifoldOnANoncompactMetricSpacePackage {M : Type u} [TopologicalSpace M] [MetricSpace M]
    [LocallyCompactSpace M] where
  manifoldStructure : Manifold ℝ M
  riemannianMetric : RiemannianMetric M
  noncompact : ¬ CompactSpace M
  geodesicCompleteness : Prop

structure ManifoldOnANoncompactMetricSpaceEvidence
    {M : Type u} [TopologicalSpace M] [MetricSpace M] [LocallyCompactSpace M]
    (P : ManifoldOnANoncompactMetricSpacePackage M) where
  manifoldStructureClosed : P.manifoldStructure
  riemannianMetricClosed : P.riemannianMetric
  noncompactClosed : P.noncompact
  geodesicCompletenessClosed : P.geodesicCompleteness

def ManifoldOnANoncompactMetricSpaceClosed {M : Type u} [TopologicalSpace M] [MetricSpace M]
    [LocallyCompactSpace M] (P : ManifoldOnANoncompactMetricSpacePackage M) : Prop :=
  P.manifoldStructure ∧ P.riemannianMetric ∧ P.noncompact ∧ P.geodesicCompleteness

theorem manifold_on_a_noncompact_metric_space_closed_from_evidence
    {M : Type u} [TopologicalSpace M] [MetricSpace M] [LocallyCompactSpace M]
    (P : ManifoldOnANoncompactMetricSpacePackage M)
    (E : ManifoldOnANoncompactMetricSpaceEvidence P) :
    ManifoldOnANoncompactMetricSpaceClosed P := by
  exact And.intro E.manifoldStructureClosed
    (And.intro E.riemannianMetricClosed
      (And.intro E.noncompactClosed E.geodesicCompletenessClosed))

end CompactLocallyCompactMetricSpacesCanonicalLaneLean
end HautevilleHouse