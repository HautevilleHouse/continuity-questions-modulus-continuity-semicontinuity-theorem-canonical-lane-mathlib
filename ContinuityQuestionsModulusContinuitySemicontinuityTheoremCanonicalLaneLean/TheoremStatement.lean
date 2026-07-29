import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean

structure ContinuityAdmittedObject where
  pointwiseLimit : Type
  uniformLimit : Type
  semicontinuousEnvelope : Type
  modulusContinuity : Prop
  convergenceResult : Prop
  bridgeCondition : Prop
  conclusion : ContinuityBridgeClosed this

def ContinuityBridgeClosed (O : ContinuityAdmittedObject) : Prop :=
  O.bridgeCondition

end ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean
end HautevilleHouse