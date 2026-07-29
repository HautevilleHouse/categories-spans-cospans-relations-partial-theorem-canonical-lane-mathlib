import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean

structure SpanCategory where
  Obj : Type u
  Hom : Obj → Obj → Type v
  identity : (X : Obj) → Hom X X
  compose : {X Y Z : Obj} → Hom X Y → Hom Y Z → Hom X Z
  categoryLaws : Prop
  categoryLawsTerm : categoryLaws

structure Span where
  A : Type u
  B : Type u
  C : Type u
  l : SpanCategory.Hom A B
  r : SpanCategory.Hom A C
  spanClosed : Prop
  spanClosedTerm : spanClosed

end CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean
end HautevilleHouse