import canonicalLaneMathlib.AdmissibleClass

/-!
# Algebraic Closure Package
-/

namespace HautevilleHouse
namespace AbstractAlgebraicLogicCanonicalLaneLean

structure AlgebraicClosurePackage where
  algebra : Type u
  congruenceRelation : Type v
  closureOperation : algebra → algebra
  closureIdempotent : Prop
  closureExtensive : Prop
  closureMonotone : Prop

structure AlgebraicClosureEvidence (A : AlgebraicClosurePackage) where
  closureIdempotentClosed : A.closureIdempotent
  closureExtensiveClosed : A.closureExtensive
  closureMonotoneClosed : A.closureMonotone

def AlgebraicClosureClosed (A : AlgebraicClosurePackage) : Prop :=
  A.closureIdempotent ∧ A.closureExtensive ∧ A.closureMonotone

theorem algebraic_closure_closed_from_evidence (A : AlgebraicClosurePackage)
    (E : AlgebraicClosureEvidence A) : AlgebraicClosureClosed A := by
  exact And.intro E.closureIdempotentClosed
    (And.intro E.closureExtensiveClosed E.closureMonotoneClosed)

end AbstractAlgebraicLogicCanonicalLaneLean
end HautevilleHouse