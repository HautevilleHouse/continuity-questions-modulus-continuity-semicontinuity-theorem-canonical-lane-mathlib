import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean.ModulusContinuity
import HautevilleHouse.ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean.UniformContinuity

namespace HautevilleHouse
namespace ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean

structure LusinTheoremPackage (M : ModulusContinuityPackage) (U : UniformContinuityPackage M) where
  measureSpace : Type u
  measure : MeasureTheory.Measure measureSpace
  functionToApproximate : measureSpace → U.targetSpace
  measurable : Prop
  continuousOnLargeSet : Prop
  epsilonSmall : ℝ
  setOfContinuity : Set measureSpace
  continuousOnSet : ContinuousOn functionToApproximate setOfContinuity
  measureComplementSmall : measure (setOfContinuityᶜ) < epsilonSmall

structure LusinTheoremEvidence (M : ModulusContinuityPackage) (U : UniformContinuityPackage M) (L : LusinTheoremPackage M U) where
  measurableClosed : L.measurable
  continuousOnLargeSetClosed : L.continuousOnLargeSet

structure LusinTheoremClosed (M : ModulusContinuityPackage) (U : UniformContinuityPackage M) (L : LusinTheoremPackage M U) : Prop := mk
  (measurableClosed : L.measurable)
  (continuousOnLargeSetClosed : L.continuousOnLargeSet)

theorem lusin_theorem_closed_from_evidence (M : ModulusContinuityPackage) (U : UniformContinuityPackage M) (L : LusinTheoremPackage M U) (Ev : LusinTheoremEvidence M U L) : LusinTheoremClosed M U L := by
  exact LusinTheoremClosed.mk Ev.measurableClosed Ev.continuousOnLargeSetClosed

end ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean
end HautevilleHouse