import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryCellSignalingCanonicalLaneLean

structure ReceptorLigandPackage where
  receptorPresent : Prop
  ligandAvailable : Prop
  bindingAffinity : Prop
  bindingEvent : Prop

structure ReceptorBindingEvidence (R : ReceptorLigandPackage) where
  receptorPresentClosed : R.receptorPresent
  ligandAvailableClosed : R.ligandAvailable
  bindingAffinityClosed : R.bindingAffinity
  bindingEventClosed : R.bindingEvent

def ReceptorBindingClosed (R : ReceptorLigandPackage) : Prop :=
  R.receptorPresent ∧ R.ligandAvailable ∧ R.bindingAffinity ∧ R.bindingEvent

theorem receptor_binding_closed_from_evidence (R : ReceptorLigandPackage)
    (E : ReceptorBindingEvidence R) : ReceptorBindingClosed R := by
  exact And.intro E.receptorPresentClosed
    (And.intro E.ligandAvailableClosed
      (And.intro E.bindingAffinityClosed E.bindingEventClosed))

end BiochemistryCellSignalingCanonicalLaneLean
end HautevilleHouse