import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.LocallyCompact.Basic

namespace HautevilleHouse
namespace CompactLocallyCompactMetricSpacesCanonicalLaneLean

structure LocallyCompactStructurePackage (M : MetricSpacePackage) where
  everyPointHasCompactNeighborhood : Prop
  relativelyCompactBasis : Prop
  exhaustionByCompactSets : Prop

structure LocallyCompactStructureEvidence {M : MetricSpacePackage} (L : LocallyCompactStructurePackage M) where
  everyPointHasCompactNeighborhoodClosed : L.everyPointHasCompactNeighborhood
  relativelyCompactBasisClosed : L.relativelyCompactBasis
  exhaustionByCompactSetsClosed : L.exhaustionByCompactSets

def LocallyCompactStructureClosed {M : MetricSpacePackage} (L : LocallyCompactStructurePackage M) : Prop :=
  L.everyPointHasCompactNeighborhood ∧ L.relativelyCompactBasis ∧ L.exhaustionByCompactSets

theorem locally_compact_structure_closed_from_evidence {M : MetricSpacePackage} (L : LocallyCompactStructurePackage M) (E : LocallyCompactStructureEvidence L) :
    LocallyCompactStructureClosed L := by
  exact And.intro E.everyPointHasCompactNeighborhoodClosed (And.intro E.relativelyCompactBasisClosed E.exhaustionByCompactSetsClosed)

end CompactLocallyCompactMetricSpacesCanonicalLaneLean
end HautevilleHouse