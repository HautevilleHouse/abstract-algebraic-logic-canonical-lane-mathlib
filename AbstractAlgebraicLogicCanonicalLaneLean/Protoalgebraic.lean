import canonicalLaneMathlib.AdmissibleClass

/-!
# Protoalgebraic Logic Package
-/

namespace HautevilleHouse
namespace AbstractAlgebraicLogicCanonicalLaneLean

structure ProtoalgebraicPackage (A : AdmissibleClass) where
  implicationConnectives : List (A.object.carrier → A.object.carrier → A.object.carrier)
  deductionTheorem : Prop
  godelDeductionTheorem : Prop
  protoalgebraicCondition : Prop

structure ProtoalgebraicEvidence {A : AdmissibleClass} (P : ProtoalgebraicPackage A) where
  deductionTheoremClosed : P.deductionTheorem
  godelDeductionTheoremClosed : P.godelDeductionTheorem
  protoalgebraicConditionClosed : P.protoalgebraicCondition

def ProtoalgebraicClosed {A : AdmissibleClass} (P : ProtoalgebraicPackage A) : Prop :=
  P.deductionTheorem ∧ P.godelDeductionTheorem ∧ P.protoalgebraicCondition

theorem protoalgebraic_closed_from_evidence
    {A : AdmissibleClass} (P : ProtoalgebraicPackage A) (E : ProtoalgebraicEvidence P) :
    ProtoalgebraicClosed P := by
  exact And.intro E.deductionTheoremClosed
    (And.intro E.godelDeductionTheoremClosed E.protoalgebraicConditionClosed)

end AbstractAlgebraicLogicCanonicalLaneLean
end HautevilleHouse