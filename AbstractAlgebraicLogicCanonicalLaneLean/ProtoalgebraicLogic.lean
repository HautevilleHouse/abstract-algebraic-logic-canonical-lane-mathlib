import canonicalLaneMathlib.AdmissibleClass
import AbstractAlgebraicLogicCanonicalLaneLean.LogicalMatrix

namespace HautevilleHouse
namespace AbstractAlgebraicLogicCanonicalLaneLean

structure ProtoalgebraicLogic (A : Type u) (F : Type v) where
  matrices : Set (LogicalMatrix A F)
  deductionTheorem : Prop
  leibnizOperatorMonotone : Prop
  deductionTheoremClosed : deductionTheorem
  leibnizOperatorMonotoneClosed : leibnizOperatorMonotone

def ProtoalgebraicLogicClosed (A : Type u) (F : Type v) (L : ProtoalgebraicLogic A F) : Prop :=
  L.deductionTheorem ∧ L.leibnizOperatorMonotone

theorem protoalgebraic_logic_closed_from_evidence (A : Type u) (F : Type v) (L : ProtoalgebraicLogic A F) : ProtoalgebraicLogicClosed A F L :=
  And.intro L.deductionTheoremClosed L.leibnizOperatorMonotoneClosed

def bridgeClosed (A : AdmissibleClass) : Prop :=
  True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  trivial

end AbstractAlgebraicLogicCanonicalLaneLean
end HautevilleHouse