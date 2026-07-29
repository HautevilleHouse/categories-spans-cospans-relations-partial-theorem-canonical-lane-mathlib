import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean

structure SpanSpace where
  carrier : Type
  source : Type
  target : Type
  structureMap : carrier → source × target

definition SpanAdmittedObject where
  space : SpanSpace
  isUniversal : Prop
  conclusion : isUniversal

structure CospanSpace where
  carrier : Type
  apex : Type
  leftMap : carrier → apex
  rightMap : carrier → apex

definition CospanAdmittedObject where
  space : CospanSpace
  isPullback : Prop
  conclusion : isPullback

structure AdmissibleClass where
  object : SpanAdmittedObject
  cospanObject : CospanAdmittedObject
  relationCompatible : Prop
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion ∧ A.cospanObject.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean
end HautevilleHouse
