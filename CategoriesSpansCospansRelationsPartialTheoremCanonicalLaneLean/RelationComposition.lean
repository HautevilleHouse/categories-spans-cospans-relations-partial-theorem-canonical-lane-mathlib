import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean

structure RelationComposition where
  sourceRelation : Type u → Type v → Prop
  targetRelation : Type w → Type x → Prop
  compositeDefined : Prop
  associativityHolds : Prop
  identityExists : Prop
  compositeDefinedTerm : compositeDefined
  associativityTerm : associativityHolds
  identityTerm : identityExists

structure RelationEvidence (R : RelationComposition) where
  compositeClosed : R.compositeDefined
  associativityClosed : R.associativityHolds
  identityClosed : R.identityExists

def RelationClosed (R : RelationComposition) : Prop :=
  R.compositeDefined ∧ R.associativityHolds ∧ R.identityExists

theorem relation_closed_from_evidence (R : RelationComposition) (E : RelationEvidence R) : RelationClosed R := by
  exact And.intro E.compositeClosed (And.intro E.associativityClosed E.identityClosed)

end CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean
end HautevilleHouse