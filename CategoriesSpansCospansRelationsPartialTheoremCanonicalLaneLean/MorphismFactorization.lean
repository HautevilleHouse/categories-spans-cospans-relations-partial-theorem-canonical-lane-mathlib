import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean.SpanCospanAdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean

structure FactorizationData where
  object : Type
  factorLeft : object → object
  factorRight : object → object
  compositionIsIdentity : factorRight ∘ factorLeft = id
  factorLeftIsMono : Prop
  factorRightIsEpi : Prop

definition FactorizationAdmittedObject where
  data : FactorizationData
  conclusion : data.compositionIsIdentity ∧ data.factorLeftIsMono ∧ data.factorRightIsEpi

structure FactorizationEvidence where
  object : FactorizationAdmittedObject
  identityClosed : object.data.compositionIsIdentity
  monoClosed : object.data.factorLeftIsMono
  epiClosed : object.data.factorRightIsEpi

def FactorizationClosed (o : FactorizationAdmittedObject) : Prop :=
  o.data.compositionIsIdentity ∧ o.data.factorLeftIsMono ∧ o.data.factorRightIsEpi

theorem factorization_closed_from_evidence (e : FactorizationEvidence) : FactorizationClosed e.object :=
  And.intro e.identityClosed (And.intro e.monoClosed e.epiClosed)

theorem factorization_to_bridge (A : AdmissibleClass) (o : FactorizationAdmittedObject) :
  FactorizationClosed o → bridgeClosed A :=
  λ h => bridge_from_admissible_class A

end CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean
end HautevilleHouse
