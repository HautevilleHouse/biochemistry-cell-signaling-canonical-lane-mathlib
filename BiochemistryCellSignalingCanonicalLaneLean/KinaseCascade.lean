import HautevilleHouse.BiochemistryCellSignalingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryCellSignalingCanonicalLaneLean

structure KinaseCascadePackage where
  phosphorylationEvents : Prop
  cascadeAmplification : Prop
  scaffoldProteins : Prop
  phosphataseRegulation : Prop

structure KinaseCascadeEvidence (K : KinaseCascadePackage) where
  phosphorylationEventsClosed : K.phosphorylationEvents
  cascadeAmplificationClosed : K.cascadeAmplification
  scaffoldProteinsClosed : K.scaffoldProteins
  phosphataseRegulationClosed : K.phosphataseRegulation

def KinaseCascadeClosed (K : KinaseCascadePackage) : Prop :=
  K.phosphorylationEvents ∧ K.cascadeAmplification ∧ K.scaffoldProteins ∧ K.phosphataseRegulation

theorem kinase_cascade_closed_from_evidence
    (K : KinaseCascadePackage) (E : KinaseCascadeEvidence K) : KinaseCascadeClosed K := by
  exact And.intro E.phosphorylationEventsClosed
    (And.intro E.cascadeAmplificationClosed
      (And.intro E.scaffoldProteinsClosed E.phosphataseRegulationClosed))

end BiochemistryCellSignalingCanonicalLaneLean
end HautevilleHouse