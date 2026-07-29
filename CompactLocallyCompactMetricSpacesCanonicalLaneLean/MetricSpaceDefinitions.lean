import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.MetricSpace.Basic

namespace HautevilleHouse
namespace CompactLocallyCompactMetricSpacesCanonicalLaneLean

structure MetricSpacePackage where
  carrier : Type u
  topology : TopologicalSpace carrier
  metric : MetricSpace carrier
  closedBoundedSubsetsCompact : Prop
  locallyCompact : Prop

structure MetricSpaceEvidence (M : MetricSpacePackage) where
  closedBoundedSubsetsCompactClosed : M.closedBoundedSubsetsCompact
  locallyCompactClosed : M.locallyCompact

def MetricSpaceClosed (M : MetricSpacePackage) : Prop :=
  M.closedBoundedSubsetsCompact ∧ M.locallyCompact

theorem metric_space_closed_from_evidence (M : MetricSpacePackage) (E : MetricSpaceEvidence M) :
    MetricSpaceClosed M := by
  exact And.intro E.closedBoundedSubsetsCompactClosed E.locallyCompactClosed

end CompactLocallyCompactMetricSpacesCanonicalLaneLean
end HautevilleHouse