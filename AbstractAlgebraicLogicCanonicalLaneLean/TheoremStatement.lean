import AbstractAlgebraicLogicCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AbstractAlgebraicLogicCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

noncomputable def sourceCheckoutHead : String :=
  "dummy_sha"

noncomputable def baselineCertificateLane : String :=
  "abstract_algebraic_logic_constrained"

noncomputable def sourceTheoremStatement : TheoremStatement :=
  {
    sourceKey := "abstract-algebraic-logic-canonical-lane"
    theoremName := "Hilbert's Compactness Theorem for Equational Logic"
    theoremObject := "AdmissibleClass closure for Abstract Algebraic Logic"
    classicalBoundary := "unrestricted classical closure carried outside"
    constrainedStatement := "constrained bridge/gate closure internalized"
    certificateLane := baselineCertificateLane
    carriedRemainder := "classical source boundary remains open"
  }

end AbstractAlgebraicLogicCanonicalLaneLean
end HautevilleHouse