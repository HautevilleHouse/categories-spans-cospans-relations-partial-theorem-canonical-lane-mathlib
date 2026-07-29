import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean

structure Span (A B : Type) where
  apex : Type
  leftLeg : apex → A
  rightLeg : apex → B

structure Cospan (A B : Type) where
  nadir : Type
  leftLeg : A → nadir
  rightLeg : B → nadir

structure Relation (A B : Type) where
  graph : Set (A × B)

structure PartialTheorem (X : Type) where
  partialMap : X → Option X
  idempotentOnDomain : ∀ x, (partialMap x).bind partialMap = partialMap x

definition PartialTheoremClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem partial_theorem_closed (A : AdmissibleClass) : PartialTheoremClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean
end HautevilleHouse