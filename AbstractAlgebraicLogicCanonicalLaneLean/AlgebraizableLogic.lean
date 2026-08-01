import canonicalLaneMathlib.AdmissibleClass
import AbstractAlgebraicLogicCanonicalLaneLean.ProtoalgebraicLogic

namespace HautevilleHouse
namespace AbstractAlgebraicLogicCanonicalLaneLean

structure AlgebraizableLogic (A : Type u) (F : Type v) (L : ProtoalgebraicLogic A F) where
  equivalentAlgebraicSemantics : Type w
  translationPair : (A → F) × (F → A)
  equivalenceTheorem : Prop
  equivalenceTheoremClosed : equivalenceTheorem

def AlgebraizableLogicClosed (A : Type u) (F : Type v) (L : ProtoalgebraicLogic A F) (AL : AlgebraizableLogic A F L) : Prop :=
  AL.equivalenceTheorem

theorem algebraizable_logic_closed_from_evidence (A : Type u) (F : Type v) (L : ProtoalgebraicLogic A F) (AL : AlgebraizableLogic A F L) : AlgebraizableLogicClosed A F L AL :=
  AL.equivalenceTheoremClosed

end AbstractAlgebraicLogicCanonicalLaneLean
end HautevilleHouse