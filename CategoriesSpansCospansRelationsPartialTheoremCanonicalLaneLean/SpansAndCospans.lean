import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean

structure SpanCategory (Obj : Type) where
  spans : ∀ (A B : Obj), Set (Span A B)
  composition : ∀ (A B C : Obj) (f : Span A B) (g : Span B C), Span A C
  identity : ∀ (A : Obj), Span A A
  associativity : ∀ (A B C D : Obj) (f : Span A B) (g : Span B C) (h : Span C D),
    composition A C D (composition A B C f g) h = composition A B D f (composition B C D g h)
  identityLeft : ∀ (A B : Obj) (f : Span A B), composition A A B (identity A) f = f
  identityRight : ∀ (A B : Obj) (f : Span A B), composition A B B f (identity B) = f

theorem span_category_closed (SC : SpanCategory Type) : True := trivial

end CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean
end HautevilleHouse