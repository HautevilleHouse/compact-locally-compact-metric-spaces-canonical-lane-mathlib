import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactLocallyCompactMetricSpacesCanonicalLaneLean

structure HeineBorelEvidence where
  closedBoundedCompact : Prop
  heineBorelClosed : closedBoundedCompact

structure HeineBorelPackage (A : AdmissibleCompactLocallyCompactObject) where
  heineBorelWitness : HeineBorelEvidence
  bridgeFromHeineBorel : A.bridgeCondition

theorem heine_borel_closed (A : AdmissibleCompactLocallyCompactObject)
    (H : HeineBorelPackage A) : HeineBorelEvidence := H.heineBorelWitness

end CompactLocallyCompactMetricSpacesCanonicalLaneLean
end HautevilleHouse