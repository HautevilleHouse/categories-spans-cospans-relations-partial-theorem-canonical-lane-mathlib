import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean

structure PartialFunctor (C : Type) (D : Type) where
  objectMap : C → Option D
  morphismMap : (C → C → Prop) → (D → D → Prop) → Prop

structure PartialFunctorCategory where
  sourceCategory : Type
  targetCategory : Type
  partialFunctors : List (PartialFunctor sourceCategory targetCategory)
  compositionPartial : Prop

structure PartialFunctorialityPackage where
  categorySource : Type u
  categoryTarget : Type u
  functorData : List (PartialFunctor categorySource categoryTarget)
  functorialityCondition : Prop

structure PartialFunctorialityEvidence (P : PartialFunctorialityPackage) where
  categoriesDefined : True
  functorDataClosed : P.functorData.length > 0
  functorialityConditionClosed : P.functorialityCondition

def PartialFunctorialityClosed (P : PartialFunctorialityPackage) : Prop :=
  P.functorData.length > 0 ∧ P.functorialityCondition

theorem partial_functoriality_closed_from_evidence (P : PartialFunctorialityPackage) (E : PartialFunctorialityEvidence P) : PartialFunctorialityClosed P :=
  And.intro E.functorDataClosed E.functorialityConditionClosed

end CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean
end HautevilleHouse