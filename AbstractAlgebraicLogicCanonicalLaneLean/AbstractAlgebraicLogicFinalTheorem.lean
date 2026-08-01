import HautevilleHouse.AbstractAlgebraicLogicCanonicalLaneLean.AbstractAlgebraicLogicAdmissibleClass

namespace HautevilleHouse
namespace AbstractAlgebraicLogicCanonicalLaneLean

def ConstrainedAALClosure (A : AALAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_aal_endgame (A : AALAdmissibleClass) :
    ConstrainedAALClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AbstractAlgebraicLogicCanonicalLaneLean
end HautevilleHouse
