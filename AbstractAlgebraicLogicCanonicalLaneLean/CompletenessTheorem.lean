import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbstractAlgebraicLogicCanonicalLaneLean.LindenbaumTarski

/-!
# Completeness Theorem Package
-/

namespace HautevilleHouse
namespace AbstractAlgebraicLogicCanonicalLaneLean

structure CompletenessTheoremPackage {P : LindenbaumTarskiPackage}
    (L : LindenbaumTarskiEvidence P) where
  deductionTheorem : Prop
  soundness : Prop
  completeness : Prop

def CompletenessTheoremClosed {P : LindenbaumTarskiPackage}
    {L : LindenbaumTarskiEvidence P} (C : CompletenessTheoremPackage L) : Prop :=
  C.deductionTheorem ∧ C.soundness ∧ C.completeness

theorem completeness_theorem_closed_from_evidence
    {P : LindenbaumTarskiPackage} {L : LindenbaumTarskiEvidence P}
    (C : CompletenessTheoremPackage L) : CompletenessTheoremClosed C := by
  exact And.intro C.deductionTheorem (And.intro C.soundness C.completeness)

end AbstractAlgebraicLogicCanonicalLaneLean
end HautevilleHouse