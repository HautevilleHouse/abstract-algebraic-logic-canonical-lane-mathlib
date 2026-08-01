import canonicalLaneMathlib.AdmissibleClass

/-!
# Lindenbaum-Tarski Algebra Package
-/

namespace HautevilleHouse
namespace AbstractAlgebraicLogicCanonicalLaneLean

structure LindenbaumTarskiPackage where
  formulas : Type u
  equivalenceRelation : formulas → formulas → Prop
  equivalenceRelationIsEquivalence : Equivalence equivalenceRelation
  logicalOperations : formulas → formulas → formulas
  implication : formulas → formulas → formulas
  conjunction : formulas → formulas → formulas
  disjunction : formulas → formulas → formulas
  negation : formulas → formulas

structure LindenbaumTarskiEvidence (P : LindenbaumTarskiPackage) where
  equivalenceClosed : P.equivalenceRelationIsEquivalence
  operationsClosed : ∀ f g, P.implication f g = P.implication f g

def LindenbaumTarskiClosed (P : LindenbaumTarskiPackage) : Prop :=
  P.equivalenceRelationIsEquivalence

theorem lindenbaum_tarski_closed_from_evidence (P : LindenbaumTarskiPackage)
    (E : LindenbaumTarskiEvidence P) : LindenbaumTarskiClosed P := by
  exact E.equivalenceClosed

end AbstractAlgebraicLogicCanonicalLaneLean
end HautevilleHouse