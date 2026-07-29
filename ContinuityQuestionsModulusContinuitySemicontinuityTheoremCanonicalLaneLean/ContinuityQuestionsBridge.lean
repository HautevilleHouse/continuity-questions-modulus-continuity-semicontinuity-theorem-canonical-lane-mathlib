import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean.ModulusContinuity
import HautevilleHouse.ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean.Semicontinuity

namespace HautevilleHouse
namespace ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ModulusContinuityClosed (A.object : ModulusContinuityPackage) ∧
  SemicontinuityClosed (A.object : SemicontinuityPackage)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  sorry

end ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean
end HautevilleHouse