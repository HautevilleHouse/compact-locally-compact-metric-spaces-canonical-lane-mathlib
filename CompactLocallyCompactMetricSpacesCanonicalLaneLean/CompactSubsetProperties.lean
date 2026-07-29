import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Compactness.Compact

namespace HautevilleHouse
namespace CompactLocallyCompactMetricSpacesCanonicalLaneLean

structure CompactSubsetPackage (M : MetricSpacePackage) where
  heineBorelProperty : Prop
  finiteIntersectionProperty : Prop
  nestedIntersectionNonempty : Prop

structure CompactSubsetEvidence {M : MetricSpacePackage} (C : CompactSubsetPackage M) where
  heineBorelPropertyClosed : C.heineBorelProperty
  finiteIntersectionPropertyClosed : C.finiteIntersectionProperty
  nestedIntersectionNonemptyClosed : C.nestedIntersectionNonempty

def CompactSubsetClosed {M : MetricSpacePackage} (C : CompactSubsetPackage M) : Prop :=
  C.heineBorelProperty ∧ C.finiteIntersectionProperty ∧ C.nestedIntersectionNonempty

theorem compact_subset_closed_from_evidence {M : MetricSpacePackage} (C : CompactSubsetPackage M) (E : CompactSubsetEvidence C) :
    CompactSubsetClosed C := by
  exact And.intro E.heineBorelPropertyClosed (And.intro E.finiteIntersectionPropertyClosed E.nestedIntersectionNonemptyClosed)

end CompactLocallyCompactMetricSpacesCanonicalLaneLean
end HautevilleHouse