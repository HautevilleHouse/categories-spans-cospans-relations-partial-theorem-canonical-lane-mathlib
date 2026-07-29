import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean

structure TwoCell (f : Span Type Type) (g : Span Type Type) where
  source : f.apex → g.apex
  target : f.apex → g.apex
  coherence : Prop

structure BicategoryOfSpansPackage where
  baseType : Type u
  spans : List (Span baseType baseType)
  twoCells : List (TwoCell (by
    exact { apex := baseType, leftLeg := id, rightLeg := id }
  ) (by
    exact { apex := baseType, leftLeg := id, rightLeg := id }
  ))
  verticalComposition : Prop
  horizontalComposition : Prop
  pentagonIdentity : Prop

structure BicategoryOfSpansEvidence (B : BicategoryOfSpansPackage) where
  baseTypeDefined : True
  spansClosed : B.spans.length > 0
  verticalCompositionClosed : B.verticalComposition
  horizontalCompositionClosed : B.horizontalComposition
  pentagonIdentityClosed : B.pentagonIdentity

def BicategoryOfSpansClosed (B : BicategoryOfSpansPackage) : Prop :=
  B.spans.length > 0 ∧ B.verticalComposition ∧ B.horizontalComposition ∧ B.pentagonIdentity

theorem bicategory_of_spans_closed_from_evidence (B : BicategoryOfSpansPackage) (E : BicategoryOfSpansEvidence B) : BicategoryOfSpansClosed B :=
  And.intro E.spansClosed (And.intro E.verticalCompositionClosed (And.intro E.horizontalCompositionClosed E.pentagonIdentityClosed))

end CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean
end HautevilleHouse