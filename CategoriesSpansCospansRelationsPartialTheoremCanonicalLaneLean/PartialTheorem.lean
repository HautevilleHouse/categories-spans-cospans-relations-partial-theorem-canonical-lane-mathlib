import canonicalLaneMathlib.RelationStructure

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean

structure PartialStructure (A : Type) where
  domain : Set A
  partialOrder : A → A → Prop
  reflexivity : ∀ a ∈ domain, partialOrder a a
  antisymmetry : ∀ a b ∈ domain, partialOrder a b → partialOrder b a → a = b
  transitivity : ∀ a b c ∈ domain, partialOrder a b → partialOrder b c → partialOrder a c

structure PartialEvidence (A : Type) (P : PartialStructure A) where
  domainFinite : Prop
  orderDecidable : Prop
  hasLeast : Prop
  hasGreatest : Prop

def PartialClosed (A : Type) (P : PartialStructure A) : Prop :=
  (∃ (E : PartialEvidence A P), E.domainFinite ∧ E.orderDecidable ∧ E.hasLeast ∧ E.hasGreatest)

end CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean
end HautevilleHouse
