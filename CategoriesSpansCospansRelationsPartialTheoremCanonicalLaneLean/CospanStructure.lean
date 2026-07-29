import canonicalLaneMathlib.SpanStructure

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean

structure Cospan (A B : Type) where
  base : Type
  leftInj : A → base
  rightInj : B → base

structure CospanCategory (Obj : Type) (Hom : Obj → Obj → Type) where
  identity : ∀ X : Obj, Hom X X
  composition : ∀ {X Y Z : Obj}, Hom X Y → Hom Y Z → Hom X Z
  identityLeft : ∀ {X Y : Obj} (f : Hom X Y), composition (identity X) f = f
  identityRight : ∀ {X Y : Obj} (f : Hom X Y), composition f (identity Y) = f
  associativity : ∀ {W X Y Z : Obj} (f : Hom W X) (g : Hom X Y) (h : Hom Y Z), composition (composition f g) h = composition f (composition g h)

structure CospanEvidence (A B : Type) (C : Cospan A B) where
  baseFinite : Prop
  leftInjInjective : Prop
  rightInjInjective : Prop
  pullbackExists : Prop

def CospanClosed (A B : Type) (C : Cospan A B) : Prop :=
  (∃ (E : CospanEvidence A B C), E.baseFinite ∧ E.leftInjInjective ∧ E.rightInjInjective ∧ E.pullbackExists)

end CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean
end HautevilleHouse
