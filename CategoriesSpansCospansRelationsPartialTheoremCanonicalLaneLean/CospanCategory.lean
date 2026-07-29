import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean

structure CospanCategory where
  Obj : Type u
  Hom : Obj → Obj → Type v
  identity : (X : Obj) → Hom X X
  compose : {X Y Z : Obj} → Hom X Y → Hom Y Z → Hom X Z
  categoryLaws : Prop
  categoryLawsTerm : categoryLaws

structure Cospan where
  A : Type u
  B : Type u
  C : Type u
  l : CospanCategory.Hom A B
  r : CospanCategory.Hom A C
  cospanClosed : Prop
  cospanClosedTerm : cospanClosed

end CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean
end HautevilleHouse