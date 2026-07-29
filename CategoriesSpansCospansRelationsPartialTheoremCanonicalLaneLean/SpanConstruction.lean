import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean

structure SpanConstruction where
  apex : Type u
  leftLeg : apex → Type v
  rightLeg : apex → Type w
  leftLegMonic : Prop
  rightLegMonic : Prop
  monicConditionTerm : leftLegMonic
  monicConditionTerm' : rightLegMonic

structure SpanEvidence (S : SpanConstruction) where
  leftLegMonicClosed : S.leftLegMonic
  rightLegMonicClosed : S.rightLegMonic

def SpanClosed (S : SpanConstruction) : Prop :=
  S.leftLegMonic ∧ S.rightLegMonic

theorem span_closed_from_evidence (S : SpanConstruction) (E : SpanEvidence S) : SpanClosed S := by
  exact And.intro E.leftLegMonicClosed E.rightLegMonicClosed

end CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean
end HautevilleHouse