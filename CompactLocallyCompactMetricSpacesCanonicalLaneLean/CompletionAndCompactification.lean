import HautevilleHouse.CompactLocallyCompactMetricSpacesCanonicalLaneLean.RieszRepresentation

namespace HautevilleHouse
namespace CompactLocallyCompactMetricSpacesCanonicalLaneLean

structure CompletionCompactificationPackage {C : CompactnessPackage} {L : LocallyCompactPackage C}
    {M : MetricPackage L} where
  completionExists : Prop
  onePointCompactification : Prop
  stoneCechCompactification : Prop
  completionUnique : Prop

structure CompletionCompactificationEvidence {C : CompactnessPackage} {L : LocallyCompactPackage C}
    {M : MetricPackage L} (K : CompletionCompactificationPackage M) where
  completionExistsClosed : K.completionExists
  onePointCompactificationClosed : K.onePointCompactification
  stoneCechCompactificationClosed : K.stoneCechCompactification
  completionUniqueClosed : K.completionUnique

def CompletionCompactificationClosed {C : CompactnessPackage} {L : LocallyCompactPackage C}
    {M : MetricPackage L} (K : CompletionCompactificationPackage M) : Prop :=
  K.completionExists ∧ K.onePointCompactification ∧
  K.stoneCechCompactification ∧ K.completionUnique

theorem completion_compactification_closed_from_evidence {C : CompactnessPackage}
    {L : LocallyCompactPackage C} {M : MetricPackage L}
    (K : CompletionCompactificationPackage M) (E : CompletionCompactificationEvidence K) :
    CompletionCompactificationClosed K := by
  exact And.intro E.completionExistsClosed
    (And.intro E.onePointCompactificationClosed
      (And.intro E.stoneCechCompactificationClosed E.completionUniqueClosed))

end CompactLocallyCompactMetricSpacesCanonicalLaneLean
end HautevilleHouse
