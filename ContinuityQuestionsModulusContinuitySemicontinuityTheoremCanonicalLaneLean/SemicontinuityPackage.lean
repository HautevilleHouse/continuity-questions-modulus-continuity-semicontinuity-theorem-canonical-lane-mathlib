import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean

structure SemicontinuityPackage where
  functionType : Type u
  domain : Type v
  lowerSemicontinuous : Prop
  upperSemicontinuous : Prop
  epigraphClosed : Prop
  hypographClosed : Prop

def SemicontinuityClosed (S : SemicontinuityPackage) : Prop :=
  S.lowerSemicontinuous ∧ S.upperSemicontinuous ∧ S.epigraphClosed ∧ S.hypographClosed

end ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean
end HautevilleHouse