import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : ModulusContinuityObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ModulusContinuityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean
end HautevilleHouse
