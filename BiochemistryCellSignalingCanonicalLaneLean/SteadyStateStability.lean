import HautevilleHouse.BiochemistryCellSignalingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryCellSignalingCanonicalLaneLean

structure SteadyStateStabilityPackage where
  odeSystem : Type u
  fixedPoints : Type v
  stabilityAnalysis : Prop
  bifurcationThresholds : Prop
  robustnessMargin : Prop

structure SteadyStateStabilityEvidence (P : SteadyStateStabilityPackage) where
  stabilityAnalysisClosed : P.stabilityAnalysis
  bifurcationThresholdsClosed : P.bifurcationThresholds
  robustnessMarginClosed : P.robustnessMargin

def SteadyStateStabilityClosed (P : SteadyStateStabilityPackage) : Prop :=
  P.stabilityAnalysis ∧ P.bifurcationThresholds ∧ P.robustnessMargin

theorem steady_state_stability_closed_from_evidence
    (P : SteadyStateStabilityPackage) (E : SteadyStateStabilityEvidence P) :
    SteadyStateStabilityClosed P := by
  exact And.intro E.stabilityAnalysisClosed (And.intro E.bifurcationThresholdsClosed E.robustnessMarginClosed)

end BiochemistryCellSignalingCanonicalLaneLean
end HautevilleHouse