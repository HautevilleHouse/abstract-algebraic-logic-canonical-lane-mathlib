import canonicalLaneMathlib.AdmissibleClass

/-!
# Frege Hierarchy Package
-/

namespace HautevilleHouse
namespace AbstractAlgebraicLogicCanonicalLaneLean

structure FregeHierarchyPackage (A : AdmissibleClass) where
  protoalgebraicCondition : Prop
  equivalentialCondition : Prop
  algebraizableCondition : Prop
  stronglyAlgebraizableCondition : Prop
  hierarchyChain : Prop

structure FregeHierarchyEvidence {A : AdmissibleClass} (F : FregeHierarchyPackage A) where
  protoalgebraicConditionClosed : F.protoalgebraicCondition
  equivalentialConditionClosed : F.equivalentialCondition
  algebraizableConditionClosed : F.algebraizableCondition
  stronglyAlgebraizableConditionClosed : F.stronglyAlgebraizableCondition
  hierarchyChainClosed : F.hierarchyChain

def FregeHierarchyClosed {A : AdmissibleClass} (F : FregeHierarchyPackage A) : Prop :=
  F.protoalgebraicCondition ∧ F.equivalentialCondition ∧ F.algebraizableCondition ∧
  F.stronglyAlgebraizableCondition ∧ F.hierarchyChain

theorem frege_hierarchy_closed_from_evidence
    {A : AdmissibleClass} (F : FregeHierarchyPackage A) (E : FregeHierarchyEvidence F) :
    FregeHierarchyClosed F := by
  exact And.intro E.protoalgebraicConditionClosed
    (And.intro E.equivalentialConditionClosed
      (And.intro E.algebraizableConditionClosed
        (And.intro E.stronglyAlgebraizableConditionClosed E.hierarchyChainClosed)))

end AbstractAlgebraicLogicCanonicalLaneLean
end HautevilleHouse