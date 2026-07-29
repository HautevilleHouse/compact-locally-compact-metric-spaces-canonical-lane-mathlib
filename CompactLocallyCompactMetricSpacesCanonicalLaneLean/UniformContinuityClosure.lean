import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.UniformSpace.Basic

namespace HautevilleHouse
namespace CompactLocallyCompactMetricSpacesCanonicalLaneLean

structure UniformContinuityPackage (M : MetricSpacePackage) where
  continuousFunctionsUniformlyContinuous : Prop
  compactDomainUniformContinuity : Prop
  heineCantorTheorem : Prop

structure UniformContinuityEvidence {M : MetricSpacePackage} (U : UniformContinuityPackage M) where
  continuousFunctionsUniformlyContinuousClosed : U.continuousFunctionsUniformlyContinuous
  compactDomainUniformContinuityClosed : U.compactDomainUniformContinuity
  heineCantorTheoremClosed : U.heineCantorTheorem

def UniformContinuityClosed {M : MetricSpacePackage} (U : UniformContinuityPackage M) : Prop :=
  U.continuousFunctionsUniformlyContinuous ∧ U.compactDomainUniformContinuity ∧ U.heineCantorTheorem

theorem uniform_continuity_closed_from_evidence {M : MetricSpacePackage} (U : UniformContinuityPackage M) (E : UniformContinuityEvidence U) :
    UniformContinuityClosed U := by
  exact And.intro E.continuousFunctionsUniformlyContinuousClosed (And.intro E.compactDomainUniformContinuityClosed E.heineCantorTheoremClosed)

end CompactLocallyCompactMetricSpacesCanonicalLaneLean
end HautevilleHouse