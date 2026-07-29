import HautevilleHouse.CompactLocallyCompactMetricSpacesCanonicalLaneLean.LocallyCompactStructure

namespace HautevilleHouse
namespace CompactLocallyCompactMetricSpacesCanonicalLaneLean

structure MetricPackage {C : CompactnessPackage} (L : LocallyCompactPackage C) where
  distanceFunction : Type u
  metricAxioms : Prop
  inducedTopologyCompatible : Prop
  heineCantorUniformContinuity : Prop

structure MetricEvidence {C : CompactnessPackage} {L : LocallyCompactPackage C}
    (M : MetricPackage L) where
  distanceFunctionClosed : True
  metricAxiomsClosed : M.metricAxioms
  inducedTopologyCompatibleClosed : M.inducedTopologyCompatible
  heineCantorUniformContinuityClosed : M.heineCantorUniformContinuity

def MetricClosed {C : CompactnessPackage} {L : LocallyCompactPackage C}
    (M : MetricPackage L) : Prop :=
  M.metricAxioms ∧ M.inducedTopologyCompatible ∧ M.heineCantorUniformContinuity

theorem metric_closed_from_evidence {C : CompactnessPackage} {L : LocallyCompactPackage C}
    (M : MetricPackage L) (E : MetricEvidence M) : MetricClosed M := by
  exact And.intro E.metricAxiomsClosed
    (And.intro E.inducedTopologyCompatibleClosed E.heineCantorUniformContinuityClosed)

end CompactLocallyCompactMetricSpacesCanonicalLaneLean
end HautevilleHouse
