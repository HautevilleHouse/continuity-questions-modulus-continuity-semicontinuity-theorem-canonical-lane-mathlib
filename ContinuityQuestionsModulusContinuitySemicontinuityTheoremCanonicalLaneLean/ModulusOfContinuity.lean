import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean

structure ModulusOfContinuityPackage where
  domain : Type u
  codomain : Type v
  metricDom : domain → domain → ℝ
  metricCod : codomain → codomain → ℝ
  modulusFunction : ℝ → ℝ
  monotone : ∀ t s : ℝ, t ≤ s → modulusFunction t ≤ modulusFunction s
  limitZero : Filter.Tendsto modulusFunction (𝓝 0) (𝓝 0)
  uniformContinuityCondition : Prop
  uniformContinuityConditionTerm : uniformContinuityCondition

structure ModulusOfContinuityEvidence (M : ModulusOfContinuityPackage) where
  monotoneClosed : M.monotone
  limitZeroClosed : M.limitZero
  uniformContinuityConditionClosed : M.uniformContinuityCondition

def ModulusOfContinuityClosed (M : ModulusOfContinuityPackage) : Prop :=
  M.monotone ∧ M.limitZero ∧ M.uniformContinuityCondition

theorem modulus_of_continuity_closed_from_evidence
    (M : ModulusOfContinuityPackage) (E : ModulusOfContinuityEvidence M) :
    ModulusOfContinuityClosed M := by
  exact And.intro E.monotoneClosed (And.intro E.limitZeroClosed E.uniformContinuityConditionClosed)

end ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean
end HautevilleHouse
