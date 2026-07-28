import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryCellSignalingCanonicalLaneLean

structure CascadePropagationPackage (R : ReceptorLigandPackage) where
  kinaseActivation : Prop
  phosphorylationEvent : Prop
  secondMessenger : Prop
  signalAmplification : Prop

structure CascadeEvidence (R : ReceptorLigandPackage)
    (C : CascadePropagationPackage R) where
  kinaseActivationClosed : C.kinaseActivation
  phosphorylationEventClosed : C.phosphorylationEvent
  secondMessengerClosed : C.secondMessenger
  signalAmplificationClosed : C.signalAmplification

def CascadeClosed (R : ReceptorLigandPackage)
    (C : CascadePropagationPackage R) : Prop :=
  C.kinaseActivation ∧ C.phosphorylationEvent ∧ C.secondMessenger ∧ C.signalAmplification

theorem cascade_closed_from_evidence (R : ReceptorLigandPackage)
    (C : CascadePropagationPackage R) (E : CascadeEvidence R C) : CascadeClosed R C := by
  exact And.intro E.kinaseActivationClosed
    (And.intro E.phosphorylationEventClosed
      (And.intro E.secondMessengerClosed E.signalAmplificationClosed))

end BiochemistryCellSignalingCanonicalLaneLean
end HautevilleHouse