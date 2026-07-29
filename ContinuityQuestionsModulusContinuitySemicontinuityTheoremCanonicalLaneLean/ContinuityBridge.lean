import canonicalLaneMathlib.AdmissibleClass
import ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean.ModulusContinuityPackage
import ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean.SemicontinuityTheoremPackage

namespace HautevilleHouse
namespace ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean

structure ContinuityBridgePackage (M : ModulusContinuityPackage) (S : SemicontinuityPackage) where
  modulusImpliesContinuity : Prop
  semicontinuityImpliesModulus : Prop
  bridgeCompatibility : Prop

structure ContinuityBridgeEvidence (M : ModulusContinuityPackage) (S : SemicontinuityPackage)
    (B : ContinuityBridgePackage M S) where
  modulusImpliesContinuityClosed : B.modulusImpliesContinuity
  semicontinuityImpliesModulusClosed : B.semicontinuityImpliesModulus
  bridgeCompatibilityClosed : B.bridgeCompatibility

def ContinuityBridgeClosed (M : ModulusContinuityPackage) (S : SemicontinuityPackage)
    (B : ContinuityBridgePackage M S) : Prop :=
  B.modulusImpliesContinuity ∧ B.semicontinuityImpliesModulus ∧ B.bridgeCompatibility

theorem continuity_bridge_closed_from_evidence
    (M : ModulusContinuityPackage) (S : SemicontinuityPackage)
    (B : ContinuityBridgePackage M S) (E : ContinuityBridgeEvidence M S B) :
    ContinuityBridgeClosed M S B := by
  exact And.intro E.modulusImpliesContinuityClosed
    (And.intro E.semicontinuityImpliesModulusClosed E.bridgeCompatibilityClosed)

end ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean
end HautevilleHouse