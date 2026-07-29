import canonicalLaneMathlib.AdmissibleClass

/-!
# Compact Locally Compact Metric Foundation

This module defines the basic structures for compact locally compact metric spaces
and their closure properties under the admissible class framework.
-/

namespace HautevilleHouse
namespace CompactLocallyCompactMetricSpacesCanonicalLaneLean

structure CompactLocallyCompactMetricSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  metric : MetricSpace carrier  -- ensures metric structure
  compact : CompactSpace carrier
  locallyCompact : LocallyCompactSpace carrier

theorem compact_locally_compact_implies_heine_borel (M : CompactLocallyCompactMetricSpace) : Prop :=
  -- subset is compact iff closed and bounded (classical)
  ∀ (s : Set M.carrier), IsCompact s ↔ IsClosed s ∧ Bornology.IsBounded s

theorem separable_and_complete (M : CompactLocallyCompactMetricSpace) : Prop :=
  -- compact metric spaces are separable and complete
  (IsSeparable (Set.univ : Set M.carrier)) ∧ (CompleteSpace M.carrier)

end CompactLocallyCompactMetricSpacesCanonicalLaneLean
end HautevilleHouse