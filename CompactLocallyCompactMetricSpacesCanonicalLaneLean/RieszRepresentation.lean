import HautevilleHouse.CompactLocallyCompactMetricSpacesCanonicalLaneLean.MetricStructure

namespace HautevilleHouse
namespace CompactLocallyCompactMetricSpacesCanonicalLaneLean

structure RieszRepresentationPackage {C : CompactnessPackage} {L : LocallyCompactPackage C}
    {M : MetricPackage L} where
  positiveLinearFunctionals : Type u
  radonMeasures : Type v
  rieszIsomorphism : Prop
  compactSupportDensity : Prop

structure RieszRepresentationEvidence {C : CompactnessPackage} {L : LocallyCompactPackage C}
    {M : MetricPackage L} (R : RieszRepresentationPackage M) where
  rieszIsomorphismClosed : R.rieszIsomorphism
  compactSupportDensityClosed : R.compactSupportDensity

def RieszRepresentationClosed {C : CompactnessPackage} {L : LocallyCompactPackage C}
    {M : MetricPackage L} (R : RieszRepresentationPackage M) : Prop :=
  R.rieszIsomorphism ∧ R.compactSupportDensity

theorem riesz_representation_closed_from_evidence {C : CompactnessPackage}
    {L : LocallyCompactPackage C} {M : MetricPackage L}
    (R : RieszRepresentationPackage M) (E : RieszRepresentationEvidence R) :
    RieszRepresentationClosed R := by
  exact And.intro E.rieszIsomorphismClosed E.compactSupportDensityClosed

end CompactLocallyCompactMetricSpacesCanonicalLaneLean
end HautevilleHouse
