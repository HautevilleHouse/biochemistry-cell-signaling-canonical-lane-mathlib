import BiochemistryCellSignalingCanonicalLaneLean.AdmissibleClass

/-!
# Signal Transduction Pathway Package
-/

namespace HautevilleHouse
namespace BiochemistryCellSignalingCanonicalLaneLean

structure SignalTransductionPackage (A : AdmissibleClass) where
  receptorActivation : Prop
  kinaseCascade : Prop
  secondMessenger : Prop
  geneExpressionChange : Prop

structure SignalTransductionEvidence (A : AdmissibleClass) (P : SignalTransductionPackage A) where
  receptorActivationClosed : P.receptorActivation
  kinaseCascadeClosed : P.kinaseCascade
  secondMessengerClosed : P.secondMessenger
  geneExpressionChangeClosed : P.geneExpressionChange

def SignalTransductionClosed (A : AdmissibleClass) (P : SignalTransductionPackage A) : Prop :=
  P.receptorActivation ∧ P.kinaseCascade ∧ P.secondMessenger ∧ P.geneExpressionChange

theorem signal_transduction_closed_from_evidence (A : AdmissibleClass)
    (P : SignalTransductionPackage A) (E : SignalTransductionEvidence A P) :
    SignalTransductionClosed A P := by
  exact And.intro E.receptorActivationClosed
    (And.intro E.kinaseCascadeClosed
      (And.intro E.secondMessengerClosed E.geneExpressionChangeClosed))

end BiochemistryCellSignalingCanonicalLaneLean
end HautevilleHouse