import BiochemistryCellSignalingCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BiochemistryCellSignalingCanonicalLaneLean

structure AdmissibleClass where
  object : CellSignalingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CellSignalingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiochemistryCellSignalingCanonicalLaneLean
end HautevilleHouse