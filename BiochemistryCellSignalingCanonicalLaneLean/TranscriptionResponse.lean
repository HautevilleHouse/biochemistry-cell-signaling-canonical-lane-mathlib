import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryCellSignalingCanonicalLaneLean

structure TranscriptionFactorPackage (C : CascadePropagationPackage) where
  nuclearTranslocation : Prop
  dnaBinding : Prop
  geneExpression : Prop
  cellResponse : Prop

structure TranscriptionEvidence (C : CascadePropagationPackage)
    (T : TranscriptionFactorPackage C) where
  nuclearTranslocationClosed : T.nuclearTranslocation
  dnaBindingClosed : T.dnaBinding
  geneExpressionClosed : T.geneExpression
  cellResponseClosed : T.cellResponse

def TranscriptionClosed (C : CascadePropagationPackage)
    (T : TranscriptionFactorPackage C) : Prop :=
  T.nuclearTranslocation ∧ T.dnaBinding ∧ T.geneExpression ∧ T.cellResponse

theorem transcription_closed_from_evidence (C : CascadePropagationPackage)
    (T : TranscriptionFactorPackage C) (E : TranscriptionEvidence C T) :
    TranscriptionClosed C T := by
  exact And.intro E.nuclearTranslocationClosed
    (And.intro E.dnaBindingClosed
      (And.intro E.geneExpressionClosed E.cellResponseClosed))

end BiochemistryCellSignalingCanonicalLaneLean
end HautevilleHouse