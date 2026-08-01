import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractAlgebraicLogicCanonicalLaneLean

structure AALAlgebra where
  carrier : Type
  operations : List (Type → Type)

structure AALAdmittedObject where
  algebra : AALAlgebra
  satisfiesCondition : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : AALAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AbstractAlgebraicLogicCanonicalLaneLean
end HautevilleHouse