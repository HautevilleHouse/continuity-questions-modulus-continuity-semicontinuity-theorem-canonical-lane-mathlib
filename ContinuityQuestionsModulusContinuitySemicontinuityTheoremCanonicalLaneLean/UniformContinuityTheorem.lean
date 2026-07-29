import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean

structure UniformContinuityTheoremPackage where
  function : Type u → Type v
  metricDom : Type u → Type u → ℝ
  metricCod : Type v → Type v → ℝ
  uniformlyContinuous : Prop
  modulusExists : Prop
  uniformlyContinuousTerm : uniformlyContinuous
  modulusExistsTerm : modulusExists

structure UniformContinuityTheoremEvidence (U : UniformContinuityTheoremPackage) where
  uniformlyContinuousClosed : U.uniformlyContinuous
  modulusExistsClosed : U.modulusExists

def UniformContinuityTheoremClosed (U : UniformContinuityTheoremPackage) : Prop :=
  U.uniformlyContinuous ∧ U.modulusExists

theorem uniform_continuity_theorem_closed_from_evidence
    (U : UniformContinuityTheoremPackage) (E : UniformContinuityTheoremEvidence U) :
    UniformContinuityTheoremClosed U := by
  exact And.intro E.uniformlyContinuousClosed E.modulusExistsClosed

end ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean
end HautevilleHouse
