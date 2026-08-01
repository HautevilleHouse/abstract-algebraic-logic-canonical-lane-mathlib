import AbstractAlgebraicLogicCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace AbstractAlgebraicLogicCanonicalLaneLean

def ConstrainedAbstractAlgebraicLogicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_abstract_algebraic_logic_endgame (A : AdmissibleClass) :
    ConstrainedAbstractAlgebraicLogicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AbstractAlgebraicLogicCanonicalLaneLean
end HautevilleHouse