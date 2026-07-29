import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean.ModulusContinuityStructure
import HautevilleHouse.ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean.SemicontinuityPackage

namespace HautevilleHouse
namespace ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean

structure ContinuityTheoremPackage where
  modulusPackage : ModulusContinuityPackage
  semicontinuityPackage : SemicontinuityPackage
  continuityFromModulus : Prop
  semicontinuityFromModulus : Prop

structure ContinuityTheoremEvidence (T : ContinuityTheoremPackage) where
  continuityFromModulusClosed : T.continuityFromModulus
  semicontinuityFromModulusClosed : T.semicontinuityFromModulus
  modulusEvidence : ModulusContinuityEvidence T.modulusPackage
  semicontinuityEvidence : SemicontinuityEvidence T.semicontinuityPackage

def ContinuityTheoremClosed (T : ContinuityTheoremPackage) : Prop :=
  T.continuityFromModulus ∧ T.semicontinuityFromModulus ∧
  ModulusContinuityClosed T.modulusPackage ∧
  SemicontinuityClosed T.semicontinuityPackage

theorem continuity_theorem_closed_from_evidence (T : ContinuityTheoremPackage)
    (E : ContinuityTheoremEvidence T) : ContinuityTheoremClosed T := by
  have hmc : ModulusContinuityClosed T.modulusPackage :=
    modulus_continuity_closed_from_evidence T.modulusPackage E.modulusEvidence
  have hsc : SemicontinuityClosed T.semicontinuityPackage :=
    semicontinuity_closed_from_evidence T.semicontinuityPackage E.semicontinuityEvidence
  exact And.intro E.continuityFromModulusClosed
    (And.intro E.semicontinuityFromModulusClosed
      (And.intro hmc hsc))

end ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean
end HautevilleHouse