import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean

structure HorizontalMorphism (A : Type) (B : Type) where
  relation : Relation A B

structure VerticalMorphism (A : Type) (B : Type) where
  func : A → B

structure DoubleCategoryOfRelationsPackage where
  objects : Type u
  horizontalMorphisms : List (HorizontalMorphism objects objects)
  verticalMorphisms : List (VerticalMorphism objects objects)
  horizontalComposition : Prop
  verticalComposition : Prop
  interchangeLaw : Prop

structure DoubleCategoryOfRelationsEvidence (D : DoubleCategoryOfRelationsPackage) where
  objectsDefined : True
  horizontalMorphismsClosed : D.horizontalMorphisms.length > 0
  verticalMorphismsClosed : D.verticalMorphisms.length > 0
  horizontalCompositionClosed : D.horizontalComposition
  verticalCompositionClosed : D.verticalComposition
  interchangeLawClosed : D.interchangeLaw

def DoubleCategoryOfRelationsClosed (D : DoubleCategoryOfRelationsPackage) : Prop :=
  D.horizontalMorphisms.length > 0 ∧ D.verticalMorphisms.length > 0 ∧ D.horizontalComposition ∧ D.verticalComposition ∧ D.interchangeLaw

theorem double_category_of_relations_closed_from_evidence (D : DoubleCategoryOfRelationsPackage) (E : DoubleCategoryOfRelationsEvidence D) : DoubleCategoryOfRelationsClosed D :=
  And.intro E.horizontalMorphismsClosed (And.intro E.verticalMorphismsClosed (And.intro E.horizontalCompositionClosed (And.intro E.verticalCompositionClosed E.interchangeLawClosed)))

end CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean
end HautevilleHouse