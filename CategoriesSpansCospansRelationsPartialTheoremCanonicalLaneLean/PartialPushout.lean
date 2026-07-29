import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean

structure PartialPushout where
  spanObj : SpanConstruction
  cospanObj : CospanConstruction
  squareCommutes : Prop
  universalProperty : Prop
  squareCommutesTerm : squareCommutes
  universalPropertyTerm : universalProperty

structure PartialPushoutEvidence (P : PartialPushout) where
  squareCommutesClosed : P.squareCommutes
  universalPropertyClosed : P.universalProperty

def PartialPushoutClosed (P : PartialPushout) : Prop :=
  P.squareCommutes ∧ P.universalProperty

theorem partial_pushout_closed_from_evidence (P : PartialPushout) (E : PartialPushoutEvidence P) : PartialPushoutClosed P := by
  exact And.intro E.squareCommutesClosed E.universalPropertyClosed

end CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean
end HautevilleHouse