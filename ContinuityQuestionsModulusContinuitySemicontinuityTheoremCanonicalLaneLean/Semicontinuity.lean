import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean.ModulusContinuity

namespace HautevilleHouse
namespace ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean

structure SemicontinuityPackage (M : ModulusContinuityPackage) where
  lowerSemicontinuous : Prop
  upperSemicontinuous : Prop
  lowerBoundCondition : Prop
  upperBoundCondition : Prop
  epigraphClosed : Prop
  hypographClosed : Prop

structure SemicontinuityEvidence (M : ModulusContinuityPackage) (S : SemicontinuityPackage M) where
  lowerSemicontinuousClosed : S.lowerSemicontinuous
  upperSemicontinuousClosed : S.upperSemicontinuous

structure SemicontinuityClosed (M : ModulusContinuityPackage) (S : SemicontinuityPackage M) : Prop := mk
  (lowerSemicontinuousClosed : S.lowerSemicontinuous)
  (upperSemicontinuousClosed : S.upperSemicontinuous)

theorem semicontinuity_closed_from_evidence (M : ModulusContinuityPackage) (S : SemicontinuityPackage M) (E : SemicontinuityEvidence M S) : SemicontinuityClosed M S := by
  exact SemicontinuityClosed.mk E.lowerSemicontinuousClosed E.upperSemicontinuousClosed

end ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean
end HautevilleHouse