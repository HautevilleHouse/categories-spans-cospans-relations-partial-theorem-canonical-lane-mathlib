import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean

structure Span (A B : Type) where
  apex : Type
  leftLeg : apex → A
  rightLeg : apex → B

structure SpanCategory (Obj : Type) (Hom : Obj → Obj → Type) where
  identity : ∀ X : Obj, Hom X X
  composition : ∀ {X Y Z : Obj}, Hom X Y → Hom Y Z → Hom X Z
  identityLeft : ∀ {X Y : Obj} (f : Hom X Y), composition (identity X) f = f
  identityRight : ∀ {X Y : Obj} (f : Hom X Y), composition f (identity Y) = f
  associativity : ∀ {W X Y Z : Obj} (f : Hom W X) (g : Hom X Y) (h : Hom Y Z), composition (composition f g) h = composition f (composition g h)

structure SpanEvidence (A B : Type) (S : Span A B) where
  apexFinite : Prop
  leftLegInjective : Prop
  rightLegInjective : Prop
  compatibility : Prop

def SpanClosed (A B : Type) (S : Span A B) : Prop :=
  (∃ (E : SpanEvidence A B S), E.apexFinite ∧ E.leftLegInjective ∧ E.rightLegInjective ∧ E.compatibility)

end CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean
end HautevilleHouse
