import canonicalLaneMathlib.AdmissibleClass

/-!
# C*-Algebra Package
-/

namespace HautevilleHouse
namespace CompactLocallyCompactMetricSpacesCanonicalLaneLean

structure CStarAlgebraPackage {X : Type u} [TopologicalSpace X] [MetricSpace X]
    [LocallyCompactSpace X] [CompactSpace X] where
  cstarAlgebra : CStarAlgebra X
  gelfandNaimark : Prop
  representationFaithful : Prop

structure CStarAlgebraEvidence {X : Type u} [TopologicalSpace X] [MetricSpace X]
    [LocallyCompactSpace X] [CompactSpace X] (C : CStarAlgebraPackage X) where
  cstarAlgebraClosed : C.cstarAlgebra
  gelfandNaimarkClosed : C.gelfandNaimark
  representationFaithfulClosed : C.representationFaithful

def CStarAlgebraClosed {X : Type u} [TopologicalSpace X] [MetricSpace X]
    [LocallyCompactSpace X] [CompactSpace X] (C : CStarAlgebraPackage X) : Prop :=
  C.cstarAlgebra ∧ C.gelfandNaimark ∧ C.representationFaithful

theorem cstar_algebra_closed_from_evidence
    {X : Type u} [TopologicalSpace X] [MetricSpace X]
    [LocallyCompactSpace X] [CompactSpace X]
    (C : CStarAlgebraPackage X) (E : CStarAlgebraEvidence C) : CStarAlgebraClosed C := by
  exact And.intro E.cstarAlgebraClosed
    (And.intro E.gelfandNaimarkClosed E.representationFaithfulClosed)

end CompactLocallyCompactMetricSpacesCanonicalLaneLean
end HautevilleHouse