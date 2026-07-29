import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactLocallyCompactMetricSpacesCanonicalLaneLean

noncomputable section

structure OnePointCompactification (M : MetricSpace) where
  carrier : Type u
  topology : TopologicalSpace carrier
  compactHausdorff : CompactSpace carrier ∧ T2Space carrier
  embedding : M → carrier
  embedding_is_open_embedding : OpenEmbedding embedding

theorem one_point_compactification_compact (M : MetricSpace)
    (O : OnePointCompactification M) : CompactSpace O.carrier :=
  O.compactHausdorff.1

theorem one_point_compactification_locally_compact_iff (M : MetricSpace) :
    LocallyCompactSpace M ↔ Nonempty (OnePointCompactification M) := by
  constructor
  · intro h; exact ⟨by exact OnePointCompactification.mk (Alexandroff M) infer_instance inferInstance (by exact ⟨And.intro (by infer_instance) (by infer_instance)⟩) (some) (by exact Alexandroff.openEmbedding)⟩
  · intro h; exact h.choose.embedding_is_open_embedding.locallyCompactSpace
  sorry

end

end CompactLocallyCompactMetricSpacesCanonicalLaneLean
end HautevilleHouse