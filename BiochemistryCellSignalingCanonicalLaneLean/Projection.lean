import BiochemistryCellSignalingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryCellSignalingCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def cellSignalingProjection : Projection CellSignalingEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem cell_signaling_projection_idempotent (x : CellSignalingEndgameState) :
    cellSignalingProjection.toFun (cellSignalingProjection.toFun x) = cellSignalingProjection.toFun x := by
  exact cellSignalingProjection.idempotent x

end BiochemistryCellSignalingCanonicalLaneLean
end HautevilleHouse