import HautevilleHouse.CompactLocallyCompactMetricSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CompactLocallyCompactMetricSpacesCanonicalLaneLean

structure CompactnessPackage where
  heineBorel : Prop
  sequentiallyCompact : Prop
  totallyBoundedComplete : Prop
  finiteSubcover : Prop

structure CompactnessEvidence (C : CompactnessPackage) where
  heineBorelClosed : C.heineBorel
  sequentiallyCompactClosed : C.sequentiallyCompact
  totallyBoundedCompleteClosed : C.totallyBoundedComplete
  finiteSubcoverClosed : C.finiteSubcover

def CompactnessClosed (C : CompactnessPackage) : Prop :=
  C.heineBorel ∧ C.sequentiallyCompact ∧ C.totallyBoundedComplete ∧ C.finiteSubcover

theorem compactness_closed_from_evidence (C : CompactnessPackage) (E : CompactnessEvidence C) :
    CompactnessClosed C := by
  exact And.intro E.heineBorelClosed
    (And.intro E.sequentiallyCompactClosed
      (And.intro E.totallyBoundedCompleteClosed E.finiteSubcoverClosed))

end CompactLocallyCompactMetricSpacesCanonicalLaneLean
end HautevilleHouse
