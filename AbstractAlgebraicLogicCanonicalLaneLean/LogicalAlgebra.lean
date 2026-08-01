import AbstractAlgebraicLogicCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AbstractAlgebraicLogicCanonicalLaneLean

structure LogicalAlgebraPackage where
  algebra : Type u
  operations : List (algebra → algebra → algebra)
  filter : Set algebra
  consequence : algebra → Prop
  filterClosure : Prop
  deductionTheorem : Prop

structure LogicalAlgebraEvidence (L : LogicalAlgebraPackage) where
  filterClosureClosed : L.filterClosure
  deductionTheoremClosed : L.deductionTheorem

def LogicalAlgebraClosed (L : LogicalAlgebraPackage) : Prop :=
  L.filterClosure ∧ L.deductionTheorem

theorem logical_algebra_closed_from_evidence (L : LogicalAlgebraPackage)
    (E : LogicalAlgebraEvidence L) : LogicalAlgebraClosed L := by
  exact And.intro E.filterClosureClosed E.deductionTheoremClosed

end AbstractAlgebraicLogicCanonicalLaneLean
end HautevilleHouse