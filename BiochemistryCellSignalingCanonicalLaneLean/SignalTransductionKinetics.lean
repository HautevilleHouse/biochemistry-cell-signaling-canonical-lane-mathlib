import HautevilleHouse.BiochemistryCellSignalingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryCellSignalingCanonicalLaneLean

structure SignalTransductionKineticsPackage where
  phosphorylationRate : Type u
  dephosphorylationRate : Type v
  kinaseActivity : Prop
  phosphataseActivity : Prop
  cascadeAmplification : Prop

structure SignalTransductionKineticsEvidence (P : SignalTransductionKineticsPackage) where
  kinaseActivityClosed : P.kinaseActivity
  phosphataseActivityClosed : P.phosphataseActivity
  cascadeAmplificationClosed : P.cascadeAmplification

def SignalTransductionKineticsClosed (P : SignalTransductionKineticsPackage) : Prop :=
  P.kinaseActivity ∧ P.phosphataseActivity ∧ P.cascadeAmplification

theorem signal_transduction_kinetics_closed_from_evidence
    (P : SignalTransductionKineticsPackage) (E : SignalTransductionKineticsEvidence P) :
    SignalTransductionKineticsClosed P := by
  exact And.intro E.kinaseActivityClosed (And.intro E.phosphataseActivityClosed E.cascadeAmplificationClosed)

end BiochemistryCellSignalingCanonicalLaneLean
end HautevilleHouse