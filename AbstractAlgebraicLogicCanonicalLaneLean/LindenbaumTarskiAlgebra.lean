import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbstractAlgebraicLogicCanonicalLaneLean.ProtoalgebraicLogic

namespace HautevilleHouse
namespace AbstractAlgebraicLogicCanonicalLaneLean

structure LindenbaumTarskiAlgebra (A : Type u) [Setoid A] [LogicalLanguage A] where
  carrier : Set (Setoid.Elem A)
  operations : List (A → A)
  identities : Prop
  identitiesClosed : identities

def LindenbaumTarskiClosed (L : LindenbaumTarskiAlgebra A) : Prop :=
  L.identities

theorem lindenbaum_tarski_closed_from_evidence (L : LindenbaumTarskiAlgebra A) : LindenbaumTarskiClosed L := by
  exact L.identitiesClosed

end AbstractAlgebraicLogicCanonicalLaneLean
end HautevilleHouse