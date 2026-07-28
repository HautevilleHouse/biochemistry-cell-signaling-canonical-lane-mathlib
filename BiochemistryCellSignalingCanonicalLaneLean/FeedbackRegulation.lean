import BiochemistryCellSignalingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryCellSignalingCanonicalLaneLean

structure FeedbackRegulationPackage where
  positiveFeedback : Prop
  negativeFeedback : Prop
  homeostasis : Prop
  oscillatoryDynamics : Prop

structure FeedbackRegulationEvidence (P : FeedbackRegulationPackage) where
  positiveFeedbackClosed : P.positiveFeedback
  negativeFeedbackClosed : P.negativeFeedback
  homeostasisClosed : P.homeostasis
  oscillatoryDynamicsClosed : P.oscillatoryDynamics

def FeedbackRegulationClosed (P : FeedbackRegulationPackage) : Prop :=
  P.positiveFeedback ∧ P.negativeFeedback ∧ P.homeostasis ∧ P.oscillatoryDynamics

theorem feedback_regulation_closed_from_evidence
    (P : FeedbackRegulationPackage) (E : FeedbackRegulationEvidence P) :
    FeedbackRegulationClosed P := by
  exact And.intro E.positiveFeedbackClosed
    (And.intro E.negativeFeedbackClosed
      (And.intro E.homeostasisClosed E.oscillatoryDynamicsClosed))

end BiochemistryCellSignalingCanonicalLaneLean
end HautevilleHouse