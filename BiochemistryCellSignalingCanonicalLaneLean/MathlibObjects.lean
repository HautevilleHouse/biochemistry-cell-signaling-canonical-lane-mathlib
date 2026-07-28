import BiochemistryCellSignalingCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BiochemistryCellSignalingCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CellSignalingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CellSignalingAdmittedObject where
  space : CellSignalingSpace
  signalTransductionPathway : Prop
  receptorBinding : Prop
  kinasePhosphorylation : Prop
  downstreamEffect : Prop
  conclusion : downstreamEffect

structure CellSignalingEndgameState where
  object : CellSignalingAdmittedObject

def CellSignalingWitnessClosed (O : CellSignalingAdmittedObject) : Prop :=
  O.downstreamEffect

end BiochemistryCellSignalingCanonicalLaneLean
end HautevilleHouse