import HautevilleHouse.BiochemistryCellSignalingCanonicalLaneLean.KinaseCascade

namespace HautevilleHouse
namespace BiochemistryCellSignalingCanonicalLaneLean

structure ReceptorLigandBindingPackage where
  ligandBindingAffinity : Prop
  receptorDimerization : Prop
  conformationalChange : Prop
  signalInitiation : Prop

structure ReceptorLigandBindingEvidence (R : ReceptorLigandBindingPackage) where
  ligandBindingAffinityClosed : R.ligandBindingAffinity
  receptorDimerizationClosed : R.receptorDimerization
  conformationalChangeClosed : R.conformationalChange
  signalInitiationClosed : R.signalInitiation

def ReceptorLigandBindingClosed (R : ReceptorLigandBindingPackage) : Prop :=
  R.ligandBindingAffinity ∧ R.receptorDimerization ∧ R.conformationalChange ∧ R.signalInitiation

theorem receptor_ligand_binding_closed_from_evidence
    (R : ReceptorLigandBindingPackage) (E : ReceptorLigandBindingEvidence R) :
    ReceptorLigandBindingClosed R := by
  exact And.intro E.ligandBindingAffinityClosed
    (And.intro E.receptorDimerizationClosed
      (And.intro E.conformationalChangeClosed E.signalInitiationClosed))

end BiochemistryCellSignalingCanonicalLaneLean
end HautevilleHouse