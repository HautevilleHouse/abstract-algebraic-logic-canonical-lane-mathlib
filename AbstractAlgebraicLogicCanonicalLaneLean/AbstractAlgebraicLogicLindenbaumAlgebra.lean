import HautevilleHouse.AbstractAlgebraicLogicCanonicalLaneLean.AbstractAlgebraicLogicAdmissibleClass

namespace HautevilleHouse
namespace AbstractAlgebraicLogicCanonicalLaneLean

structure LindenbaumAlgebraPackage where
  logic : Type u
  formulaAlgebra : Type v
  congruenceRelation : Prop
  freeAlgebra : Prop
  lindenbaumAlgebra : Prop
  lindenbaumAlgebraExists : lindenbaumAlgebra
  freeAlgebraExists : freeAlgebra
  congruenceDefined : congruenceRelation

structure LindenbaumAlgebraEvidence (L : LindenbaumAlgebraPackage) where
  lindenbaumAlgebraClosed : L.lindenbaumAlgebra
  freeAlgebraClosed : L.freeAlgebra
  congruenceDefinedClosed : L.congruenceRelation

def LindenbaumAlgebraClosed (L : LindenbaumAlgebraPackage) : Prop :=
  L.lindenbaumAlgebra ∧ L.freeAlgebra ∧ L.congruenceRelation

theorem lindenbaum_algebra_closed_from_evidence
    (L : LindenbaumAlgebraPackage) (E : LindenbaumAlgebraEvidence L) :
    LindenbaumAlgebraClosed L := by
  exact And.intro E.lindenbaumAlgebraClosed
    (And.intro E.freeAlgebraClosed E.congruenceDefinedClosed)

end AbstractAlgebraicLogicCanonicalLaneLean
end HautevilleHouse
