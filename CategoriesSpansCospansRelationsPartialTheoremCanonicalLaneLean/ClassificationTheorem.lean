import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean.SpanConstruction
import HautevilleHouse.CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean.CospanConstruction
import HautevilleHouse.CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean.RelationComposition
import HautevilleHouse.CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean.PartialPushout

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean

theorem classification_theorem (S : SpanConstruction) (C : CospanConstruction) (R : RelationComposition) (P : PartialPushout) :
    SpanClosed S ∧ CospanClosed C ∧ RelationClosed R ∧ PartialPushoutClosed P := by
  have hS : SpanClosed S := by
    refine span_closed_from_evidence S ?_
    exact { leftLegMonicClosed := S.monicConditionTerm, rightLegMonicClosed := S.monicConditionTerm' }
  have hC : CospanClosed C := by
    refine cospan_closed_from_evidence C ?_
    exact { leftConeEpiClosed := C.epiConditionTerm, rightConeEpiClosed := C.epiConditionTerm' }
  have hR : RelationClosed R := by
    refine relation_closed_from_evidence R ?_
    exact { compositeClosed := R.compositeDefinedTerm, associativityClosed := R.associativityTerm, identityClosed := R.identityTerm }
  have hP : PartialPushoutClosed P := by
    refine partial_pushout_closed_from_evidence P ?_
    exact { squareCommutesClosed := P.squareCommutesTerm, universalPropertyClosed := P.universalPropertyTerm }
  exact And.intro hS (And.intro hC (And.intro hR hP))

end CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean
end HautevilleHouse