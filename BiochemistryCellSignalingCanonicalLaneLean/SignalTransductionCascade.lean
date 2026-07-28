import BiochemistryCellSignalingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryCellSignalingCanonicalLaneLean

structure SignalTransductionCascadePackage where
  receptorActivation : Prop
  kinaseCascade : Prop
  amplification : Prop
  propagation : Prop

structure SignalTransductionCascadeEvidence (P : SignalTransductionCascadePackage) where
  receptorActivationClosed : P.receptorActivation
  kinaseCascadeClosed : P.kinaseCascade
  amplificationClosed : P.amplification
  propagationClosed : P.propagation

def SignalTransductionCascadeClosed (P : SignalTransductionCascadePackage) : Prop :=
  P.receptorActivation ∧ P.kinaseCascade ∧ P.amplification ∧ P.propagation

theorem signal_transduction_cascade_closed_from_evidence
    (P : SignalTransductionCascadePackage) (E : SignalTransductionCascadeEvidence P) :
    SignalTransductionCascadeClosed P := by
  exact And.intro E.receptorActivationClosed
    (And.intro E.kinaseCascadeClosed
      (And.intro E.amplificationClosed E.propagationClosed))

end BiochemistryCellSignalingCanonicalLaneLean
end HautevilleHouse