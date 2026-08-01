import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractAlgebraicLogicCanonicalLaneLean

structure AALogicalAlgebra where
  carrier : Type u
  operations : List (carrier → carrier)
  axioms : Prop
  conclusion : Prop

structure AALAdmittedObject where
  algebra : AALogicalAlgebra
  algebraConclusion : algebra.conclusion

structure AALAdmissibleClass where
  object : AALAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AALAdmissibleClass) : Prop :=
  A.object.algebraConclusion

def gateClosed (A : AALAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AALAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.algebraConclusion

theorem gate_from_admissible_class (A : AALAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end AbstractAlgebraicLogicCanonicalLaneLean
end HautevilleHouse
