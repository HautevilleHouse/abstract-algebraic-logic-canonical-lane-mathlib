import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractAlgebraicLogicCanonicalLaneLean

structure DeductiveSystem where
  Formula : Type u
  Consequence : Set Formula → Formula → Prop
  Reflexivity : ∀ (A : Formula), Consequence {A} A
  Monotonicity : ∀ (Γ Δ : Set Formula) (A : Formula), Consequence Γ A → Γ ⊆ Δ → Consequence Δ A
  Cut : ∀ (Γ Δ : Set Formula) (A : Formula), (∀ (B : Formula), B ∈ Δ → Consequence Γ B) → Consequence (Γ ∪ Δ) A → Consequence Γ A

structure LindenbaumAlgebra (D : DeductiveSystem) where
  carrier : Type v
  eqRel : D.Formula → D.Formula → Prop
  eqRefl : ∀ (A : D.Formula), eqRel A A
  eqSymm : ∀ (A B : D.Formula), eqRel A B → eqRel B A
  eqTrans : ∀ (A B C : D.Formula), eqRel A B → eqRel B C → eqRel A C
  impl : D.Formula → D.Formula → D.Formula
  implCongr : ∀ (A A' B B' : D.Formula), eqRel A A' → eqRel B B' → eqRel (impl A B) (impl A' B')

structure AlgebraicLogicSystem where
  deductive : DeductiveSystem
  lindenbaum : LindenbaumAlgebra deductive
  completeness : ∀ (A : deductive.Formula), A ∈ deductive.Consequence ∅ ↔ lindenbaum.eqRel A (lindenbaum.impl (lindenbaum.impl A A) A)

end AbstractAlgebraicLogicCanonicalLaneLean
end HautevilleHouse
