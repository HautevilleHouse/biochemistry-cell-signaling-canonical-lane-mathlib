import HautevilleHouse.BiochemistryCellSignalingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryCellSignalingCanonicalLaneLean

structure LigandReceptorBindingPackage where
  ligandConcentration : Type u
  receptorDensity : Type v
  bindingAffinity : Prop
  dissociationConstant : Prop
  bindingSiteOccupancy : Prop

structure LigandReceptorBindingEvidence (P : LigandReceptorBindingPackage) where
  bindingAffinityClosed : P.bindingAffinity
  dissociationConstantClosed : P.dissociationConstant
  bindingSiteOccupancyClosed : P.bindingSiteOccupancy

def LigandReceptorBindingClosed (P : LigandReceptorBindingPackage) : Prop :=
  P.bindingAffinity ∧ P.dissociationConstant ∧ P.bindingSiteOccupancy

theorem ligand_receptor_binding_closed_from_evidence
    (P : LigandReceptorBindingPackage) (E : LigandReceptorBindingEvidence P) :
    LigandReceptorBindingClosed P := by
  exact And.intro E.bindingAffinityClosed (And.intro E.dissociationConstantClosed E.bindingSiteOccupancyClosed)

end BiochemistryCellSignalingCanonicalLaneLean
end HautevilleHouse