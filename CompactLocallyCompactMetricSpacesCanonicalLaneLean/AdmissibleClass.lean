import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactLocallyCompactMetricSpacesCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject  -- assumed imported from core
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CompactLocallyCompactMetricSpacesCanonicalLaneLean
end HautevilleHouse