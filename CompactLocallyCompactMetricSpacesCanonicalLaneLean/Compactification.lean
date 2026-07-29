import canonicalLaneMathlib.AdmissibleClass

/-!
# Compactification Package
-/

namespace HautevilleHouse
namespace CompactLocallyCompactMetricSpacesCanonicalLaneLean

structure CompactificationPackage {X : Type u} [TopologicalSpace X] [MetricSpace X]
    [LocallyCompactSpace X] where
  onePointCompactification : TopologicalSpace (Option X)
  compact : CompactSpace (Option X)
  hausdorff : T2Space (Option X)
  embedding : X → Option X
  embeddingOpenEmbedding : OpenEmbedding embedding

structure CompactificationEvidence {X : Type u} [TopologicalSpace X] [MetricSpace X]
    [LocallyCompactSpace X] (C : CompactificationPackage X) where
  compactClosed : C.compact
  hausdorffClosed : C.hausdorff
  embeddingOpenEmbeddingClosed : C.embeddingOpenEmbedding

def CompactificationClosed {X : Type u} [TopologicalSpace X] [MetricSpace X]
    [LocallyCompactSpace X] (C : CompactificationPackage X) : Prop :=
  C.compact ∧ C.hausdorff ∧ C.embeddingOpenEmbedding

theorem compactification_closed_from_evidence
    {X : Type u} [TopologicalSpace X] [MetricSpace X] [LocallyCompactSpace X]
    (C : CompactificationPackage X) (E : CompactificationEvidence C) :
    CompactificationClosed C := by
  exact And.intro E.compactClosed (And.intro E.hausdorffClosed E.embeddingOpenEmbeddingClosed)

end CompactLocallyCompactMetricSpacesCanonicalLaneLean
end HautevilleHouse