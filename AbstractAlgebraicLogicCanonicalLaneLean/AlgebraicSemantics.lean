import canonicalLaneMathlib.AdmissibleClass

/-!
# Algebraic Semantics Package
-/

namespace HautevilleHouse
namespace AbstractAlgebraicLogicCanonicalLaneLean

structure AlgebraicSemanticsPackage (A : AdmissibleClass) where
  algebraClass : Type u
  interpretation : A.object.carrier → algebraClass
  soundness : Prop
  completeness : Prop
  strongCompleteness : Prop

structure AlgebraicSemanticsEvidence {A : AdmissibleClass} (S : AlgebraicSemanticsPackage A) where
  soundnessClosed : S.soundness
  completenessClosed : S.completeness
  strongCompletenessClosed : S.strongCompleteness

def AlgebraicSemanticsClosed {A : AdmissibleClass} (S : AlgebraicSemanticsPackage A) : Prop :=
  S.soundness ∧ S.completeness ∧ S.strongCompleteness

theorem algebraic_semantics_closed_from_evidence
    {A : AdmissibleClass} (S : AlgebraicSemanticsPackage A) (E : AlgebraicSemanticsEvidence S) :
    AlgebraicSemanticsClosed S := by
  exact And.intro E.soundnessClosed (And.intro E.completenessClosed E.strongCompletenessClosed)

end AbstractAlgebraicLogicCanonicalLaneLean
end HautevilleHouse