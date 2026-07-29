import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactLocallyCompactMetricSpacesCanonicalLaneLean

structure CompleteLocallyCompactMetricSpace (M : MetricSpace) where
  isComplete : CompleteSpace M
  isLocallyCompact : LocallyCompactSpace M

theorem complete_locally_compact_iff (M : MetricSpace) :
    (CompleteSpace M ∧ LocallyCompactSpace M) ↔ IsComplete (Set.univ : Set M) ∧ LocallyCompactSpace M := by
  constructor
  · intro ⟨h1, h2⟩; exact ⟨by exact h1.univ, h2⟩
  · intro ⟨h1, h2⟩; exact ⟨by exact CompleteSpace.of_isComplete_univ h1, h2⟩

end CompactLocallyCompactMetricSpacesCanonicalLaneLean
end HautevilleHouse