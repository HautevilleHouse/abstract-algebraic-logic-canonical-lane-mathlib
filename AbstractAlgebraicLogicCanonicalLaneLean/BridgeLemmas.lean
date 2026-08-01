import AbstractAlgebraicLogicCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AbstractAlgebraicLogicCanonicalLaneLean

def AALWitnessClosed (O : AALAdmittedObject) : Prop :=
  O.conclusion

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AALWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AbstractAlgebraicLogicCanonicalLaneLean
end HautevilleHouse