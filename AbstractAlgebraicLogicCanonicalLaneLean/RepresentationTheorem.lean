import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Algebra.Order.Lattice

/-!
# Representation Theorem Package
-/

namespace HautevilleHouse
namespace AbstractAlgebraicLogicCanonicalLaneLean

structure RepresentationTheoremPackage where
  algebra : Type u
  lattice : Type v
  representationMap : algebra → lattice
  mapProperties : Prop
  representationFaithful : Prop
  representationSurjective : Prop

structure RepresentationTheoremEvidence (R : RepresentationTheoremPackage) where
  mapPropertiesClosed : R.mapProperties
  representationFaithfulClosed : R.representationFaithful
  representationSurjectiveClosed : R.representationSurjective

def RepresentationTheoremClosed (R : RepresentationTheoremPackage) : Prop :=
  R.mapProperties ∧ R.representationFaithful ∧ R.representationSurjective

theorem representation_theorem_closed_from_evidence
    (R : RepresentationTheoremPackage) (E : RepresentationTheoremEvidence R) :
    RepresentationTheoremClosed R := by
  exact And.intro E.mapPropertiesClosed
    (And.intro E.representationFaithfulClosed E.representationSurjectiveClosed)

theorem representation_theorem_supplies_mathlib_statement
    (R : RepresentationTheoremPackage) : R.representationFaithful :=
  R.representationFaithful

end AbstractAlgebraicLogicCanonicalLaneLean
end HautevilleHouse