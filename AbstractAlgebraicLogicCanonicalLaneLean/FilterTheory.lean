import canonicalLaneMathlib.AdmissibleClass
import AbstractAlgebraicLogicCanonicalLaneLean.AlgebraicStructures

namespace HautevilleHouse
namespace AbstractAlgebraicLogicCanonicalLaneLean

structure Filter (D : DeductiveSystem) (A : LindenbaumAlgebra D) where
  carrier : Set A.carrier
  closedUnderModusPonens : ∀ (x y : A.carrier), x ∈ carrier → (A.impl x y) ∈ carrier → y ∈ carrier
  containsTop : carrier (A.impl (A.impl (A.impl A.top A.top) (A.impl A.top A.top)) (A.impl A.top A.top))

structure PrimeFilter (D : DeductiveSystem) (A : LindenbaumAlgebra D) extends Filter D A where
  proper : carrier ≠ Set.univ
  prime : ∀ (x y : A.carrier), A.impl (A.impl x y) ∈ carrier ∨ A.impl (A.impl y x) ∈ carrier

theorem filter_extension (D : DeductiveSystem) (A : LindenbaumAlgebra D) (F : Filter D A) (a : A.carrier) (hna : a ∉ F.carrier) : ∃ (P : PrimeFilter D A), F.carrier ⊆ P.carrier ∧ a ∉ P.carrier := by
  exact canonicalLaneMathlib.AdmissibleClass.prime_extension D A F a hna

end AbstractAlgebraicLogicCanonicalLaneLean
end HautevilleHouse