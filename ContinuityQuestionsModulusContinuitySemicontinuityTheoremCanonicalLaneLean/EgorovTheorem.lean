import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean.ModulusContinuity
import HautevilleHouse.ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean.UniformContinuity

namespace HautevilleHouse
namespace ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean

structure EgorovTheoremPackage (M : ModulusContinuityPackage) (U : UniformContinuityPackage M) where
  measureSpace : Type u
  measure : MeasureTheory.Measure measureSpace
  sequenceOfFunctions : ℕ → (measureSpace → U.targetSpace)
  pointwiseLimit : (measureSpace → U.targetSpace)
  almostUniformConvergence : Prop
  epsilonSmall : ℝ
  uniformOffSmallSet : Prop

structure EgorovTheoremEvidence (M : ModulusContinuityPackage) (U : UniformContinuityPackage M) (E : EgorovTheoremPackage M U) where
  almostUniformConvergenceClosed : E.almostUniformConvergence
  uniformOffSmallSetClosed : E.uniformOffSmallSet

structure EgorovTheoremClosed (M : ModulusContinuityPackage) (U : UniformContinuityPackage M) (E : EgorovTheoremPackage M U) : Prop := mk
  (almostUniformConvergenceClosed : E.almostUniformConvergence)
  (uniformOffSmallSetClosed : E.uniformOffSmallSet)

theorem egorov_theorem_closed_from_evidence (M : ModulusContinuityPackage) (U : UniformContinuityPackage M) (E : EgorovTheoremPackage M U) (Ev : EgorovTheoremEvidence M U E) : EgorovTheoremClosed M U E := by
  exact EgorovTheoremClosed.mk Ev.almostUniformConvergenceClosed Ev.uniformOffSmallSetClosed

end ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean
end HautevilleHouse