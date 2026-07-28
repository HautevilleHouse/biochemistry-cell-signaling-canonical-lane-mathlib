import HautevilleHouse.BiochemistryCellSignalingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryCellSignalingCanonicalLaneLean

structure PathwayTopologyPackage where
  nodeCount : Type u
  edgeList : Type v
  signalFlowDirection : Prop
  feedbackLoops : Prop
  crosstalkChannels : Prop

structure PathwayTopologyEvidence (P : PathwayTopologyPackage) where
  signalFlowDirectionClosed : P.signalFlowDirection
  feedbackLoopsClosed : P.feedbackLoops
  crosstalkChannelsClosed : P.crosstalkChannels

def PathwayTopologyClosed (P : PathwayTopologyPackage) : Prop :=
  P.signalFlowDirection ∧ P.feedbackLoops ∧ P.crosstalkChannels

theorem pathway_topology_closed_from_evidence
    (P : PathwayTopologyPackage) (E : PathwayTopologyEvidence P) :
    PathwayTopologyClosed P := by
  exact And.intro E.signalFlowDirectionClosed (And.intro E.feedbackLoopsClosed E.crosstalkChannelsClosed)

end BiochemistryCellSignalingCanonicalLaneLean
end HautevilleHouse