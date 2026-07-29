import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean.SpanCospanAdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean

structure PullbackData where
  apex : Type
  leftLeg : apex → SpanSpace.target
  rightLeg : apex → SpanSpace.target
  universalProperty : ∀ (Z : Type) (f : Z → SpanSpace.target) (g : Z → SpanSpace.target),
      ∃! h : Z → apex, leftLeg ∘ h = f ∧ rightLeg ∘ h = g

structure PushoutData where
  coconeApex : Type
  inLeft : SpanSpace.source → coconeApex
  inRight : SpanSpace.source → coconeApex
  universalProperty : ∀ (Z : Type) (f : SpanSpace.source → Z) (g : SpanSpace.source → Z),
      ∃! h : coconeApex → Z, h ∘ inLeft = f ∧ h ∘ inRight = g

definition PullbackAdmittedObject where
  data : PullbackData
  conclusion : data.universalProperty

definition PushoutAdmittedObject where
  data : PushoutData
  conclusion : data.universalProperty

theorem pullback_pushout_dual (A : SpanAdmittedObject) : PullbackAdmittedObject := {}

theorem pushout_pullback_dual (A : CospanAdmittedObject) : PushoutAdmittedObject := {}

end CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean
end HautevilleHouse
