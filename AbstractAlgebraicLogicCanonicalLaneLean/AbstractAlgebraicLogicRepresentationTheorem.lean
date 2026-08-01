import HautevilleHouse.AbstractAlgebraicLogicCanonicalLaneLean.AbstractAlgebraicLogicLindenbaumAlgebra

namespace HautevilleHouse
namespace AbstractAlgebraicLogicCanonicalLaneLean

structure RepresentationTheoremPackage (L : LindenbaumAlgebraPackage) where
  algebraAdequate : Prop
  representationExists : Prop
  soundnessProved : Prop
  completenessProved : Prop
  equivalenceToQuasivariety : Prop

structure RepresentationTheoremEvidence {L : LindenbaumAlgebraPackage}
    (R : RepresentationTheoremPackage L) where
  algebraAdequateClosed : R.algebraAdequate
  representationExistsClosed : R.representationExists
  soundnessProvedClosed : R.soundnessProved
  completenessProvedClosed : R.completenessProved
  equivalenceToQuasivarietyClosed : R.equivalenceToQuasivariety

def RepresentationTheoremClosed {L : LindenbaumAlgebraPackage}
    (R : RepresentationTheoremPackage L) : Prop :=
  R.algebraAdequate ∧ R.representationExists ∧
  R.soundnessProved ∧ R.completenessProved ∧ R.equivalenceToQuasivariety

theorem representation_theorem_closed_from_evidence
    {L : LindenbaumAlgebraPackage} (R : RepresentationTheoremPackage L)
    (E : RepresentationTheoremEvidence R) : RepresentationTheoremClosed R := by
  exact And.intro E.algebraAdequateClosed
    (And.intro E.representationExistsClosed
      (And.intro E.soundnessProvedClosed
        (And.intro E.completenessProvedClosed E.equivalenceToQuasivarietyClosed)))

end AbstractAlgebraicLogicCanonicalLaneLean
end HautevilleHouse
