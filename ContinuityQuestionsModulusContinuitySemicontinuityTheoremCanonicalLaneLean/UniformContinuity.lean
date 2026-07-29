import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean.ModulusContinuity

namespace HautevilleHouse
namespace ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean

structure UniformContinuityPackage (M : ModulusContinuityPackage) where
  sourceSpace : Type u
  targetSpace : Type v
  metricSource : MetricSpace sourceSpace
  metricTarget : MetricSpace targetSpace
  uniformlyContinuous : Prop
  modulusCompatible : Prop

structure UniformContinuityEvidence (M : ModulusContinuityPackage) (U : UniformContinuityPackage M) where
  uniformlyContinuousClosed : U.uniformlyContinuous
  modulusCompatibleClosed : U.modulusCompatible

structure UniformContinuityClosed (M : ModulusContinuityPackage) (U : UniformContinuityPackage M) : Prop := mk
  (uniformlyContinuousClosed : U.uniformlyContinuous)
  (modulusCompatibleClosed : U.modulusCompatible)

theorem uniform_continuity_closed_from_evidence (M : ModulusContinuityPackage) (U : UniformContinuityPackage M) (E : UniformContinuityEvidence M U) : UniformContinuityClosed M U := by
  exact UniformContinuityClosed.mk E.uniformlyContinuousClosed E.modulusCompatibleClosed

end ContinuityQuestionsModulusContinuitySemicontinuityTheoremCanonicalLaneLean
end HautevilleHouse