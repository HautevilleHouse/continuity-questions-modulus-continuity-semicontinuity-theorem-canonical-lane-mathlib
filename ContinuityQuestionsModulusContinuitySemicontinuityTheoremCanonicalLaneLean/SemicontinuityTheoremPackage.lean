import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean

structure SemicontinuityPackage where
  functionSpace : Type u
  topology : TopologicalSpace functionSpace
  lowerSemicontinuity : Prop
  upperSemicontinuity : Prop
  semicontinuityEquivalentToClosure : Prop
  boundednessCondition : Prop

structure SemicontinuityEvidence (S : SemicontinuityPackage) where
  lowerSemicontinuityClosed : S.lowerSemicontinuity
  upperSemicontinuityClosed : S.upperSemicontinuity
  semicontinuityEquivalentToClosureClosed : S.semicontinuityEquivalentToClosure
  boundednessConditionClosed : S.boundednessCondition

def SemicontinuityClosed (S : SemicontinuityPackage) : Prop :=
  S.lowerSemicontinuity ∧ S.upperSemicontinuity ∧
  S.semicontinuityEquivalentToClosure ∧ S.boundednessCondition

theorem semicontinuity_closed_from_evidence
    (S : SemicontinuityPackage) (E : SemicontinuityEvidence S) :
    SemicontinuityClosed S := by
  exact And.intro E.lowerSemicontinuityClosed
    (And.intro E.upperSemicontinuityClosed
      (And.intro E.semicontinuityEquivalentToClosureClosed E.boundednessConditionClosed))

end ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean
end HautevilleHouse