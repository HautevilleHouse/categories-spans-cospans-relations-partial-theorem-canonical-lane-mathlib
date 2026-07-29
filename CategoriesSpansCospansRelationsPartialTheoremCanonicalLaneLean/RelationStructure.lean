import canonicalLaneMathlib.CospanStructure

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean

structure Relation (A B : Type) where
  graph : Set (A × B)

structure RelationCategory (Obj : Type) (Hom : Obj → Obj → Type) where
  identity : ∀ X : Obj, Hom X X
  composition : ∀ {X Y Z : Obj}, Hom X Y → Hom Y Z → Hom X Z
  identityLeft : ∀ {X Y : Obj} (f : Hom X Y), composition (identity X) f = f
  identityRight : ∀ {X Y : Obj} (f : Hom X Y), composition f (identity Y) = f
  associativity : ∀ {W X Y Z : Obj} (f : Hom W X) (g : Hom X Y) (h : Hom Y Z), composition (composition f g) h = composition f (composition g h)

structure RelationEvidence (A B : Type) (R : Relation A B) where
  graphFinite : Prop
  serial : Prop
  functional : Prop
  total : Prop

def RelationClosed (A B : Type) (R : Relation A B) : Prop :=
  (∃ (E : RelationEvidence A B R), E.graphFinite ∧ E.serial ∧ E.functional ∧ E.total)

end CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean
end HautevilleHouse
