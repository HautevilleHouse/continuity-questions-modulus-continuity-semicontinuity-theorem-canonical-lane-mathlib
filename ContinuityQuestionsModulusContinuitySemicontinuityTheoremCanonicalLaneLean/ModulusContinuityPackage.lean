import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean

structure ModulusContinuityPackage where
  functionSpace : Type u
  domainTopology : TopologicalSpace functionSpace
  modulusContinuity : Type v
  epsilonDeltaCondition : Prop
  uniformContinuityImplied : Prop
  lipschitzCase : Prop
  holderCase : Prop

structure ModulusContinuityEvidence (M : ModulusContinuityPackage) where
  epsilonDeltaConditionClosed : M.epsilonDeltaCondition
  uniformContinuityImpliedClosed : M.uniformContinuityImplied
  lipschitzCaseClosed : M.lipschitzCase
  holderCaseClosed : M.holderCase

def ModulusContinuityClosed (M : ModulusContinuityPackage) : Prop :=
  M.epsilonDeltaCondition ∧ M.uniformContinuityImplied ∧
  M.lipschitzCase ∧ M.holderCase

theorem modulus_continuity_closed_from_evidence
    (M : ModulusContinuityPackage) (E : ModulusContinuityEvidence M) :
    ModulusContinuityClosed M := by
  exact And.intro E.epsilonDeltaConditionClosed
    (And.intro E.uniformContinuityImpliedClosed
      (And.intro E.lipschitzCaseClosed E.holderCaseClosed))

end ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean
end HautevilleHouse