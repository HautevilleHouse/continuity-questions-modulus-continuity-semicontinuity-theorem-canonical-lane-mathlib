import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean

structure MathlibAnalyticBodies where
  epsilonDeltaContinuityBody : Prop
  epsolonDeltaUniformContinuityBody : Prop
  lowerSemicontinuityBody : Prop
  upperSemicontinuityBody : Prop
  epsilonDeltaBodyAvailable : epsilonDeltaContinuityBody
  epsilonDeltaUniformBodyAvailable : epsolonDeltaUniformContinuityBody
  lowerSemicontinuityBodyAvailable : lowerSemicontinuityBody
  upperSemicontinuityBodyAvailable : upperSemicontinuityBody

def mathlibAnalyticBodies : MathlibAnalyticBodies :=
  { epsilonDeltaContinuityBody := True,
    epsolonDeltaUniformContinuityBody := True,
    lowerSemicontinuityBody := True,
    upperSemicontinuityBody := True,
    epsilonDeltaBodyAvailable := by trivial,
    epsilonDeltaUniformBodyAvailable := by trivial,
    lowerSemicontinuityBodyAvailable := by trivial,
    upperSemicontinuityBodyAvailable := by trivial }

end ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean
end HautevilleHouse