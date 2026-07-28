import HautevilleHouse.BiochemistryCellSignalingCanonicalLaneLean.SignalTransductionPathway

namespace HautevilleHouse
namespace BiochemistryCellSignalingCanonicalLaneLean

structure CellSignalingAnalyticFoundation where
  receptor : ReceptorLigandBindingPackage
  receptorEvidence : ReceptorLigandBindingEvidence receptor
  kinase : KinaseCascadePackage
  kinaseEvidence : KinaseCascadeEvidence kinase
  pathway : SignalTransductionPathwayPackage receptor
  pathwayEvidence : SignalTransductionPathwayEvidence pathway

def CellSignalingAnalyticFoundationClosed (F : CellSignalingAnalyticFoundation) : Prop :=
  ReceptorLigandBindingClosed F.receptor ∧
  KinaseCascadeClosed F.kinase ∧
  SignalTransductionPathwayClosed F.pathway

theorem cell_signaling_analytic_foundation_closed_from_evidence
    (F : CellSignalingAnalyticFoundation) : CellSignalingAnalyticFoundationClosed F := by
  exact And.intro (receptor_ligand_binding_closed_from_evidence F.receptor F.receptorEvidence)
    (And.intro (kinase_cascade_closed_from_evidence F.kinase F.kinaseEvidence)
      (signal_transduction_pathway_closed_from_evidence F.pathway F.pathwayEvidence))

end BiochemistryCellSignalingCanonicalLaneLean
end HautevilleHouse