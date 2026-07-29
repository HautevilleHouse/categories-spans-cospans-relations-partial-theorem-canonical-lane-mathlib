import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean

structure CospanConstruction where
  base : Type u
  leftCone : base → Type v
  rightCone : base → Type w
  leftConeEpi : Prop
  rightConeEpi : Prop
  epiConditionTerm : leftConeEpi
  epiConditionTerm' : rightConeEpi

structure CospanEvidence (C : CospanConstruction) where
  leftConeEpiClosed : C.leftConeEpi
  rightConeEpiClosed : C.rightConeEpi

def CospanClosed (C : CospanConstruction) : Prop :=
  C.leftConeEpi ∧ C.rightConeEpi

theorem cospan_closed_from_evidence (C : CospanConstruction) (E : CospanEvidence C) : CospanClosed C := by
  exact And.intro E.leftConeEpiClosed E.rightConeEpiClosed

end CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean
end HautevilleHouse