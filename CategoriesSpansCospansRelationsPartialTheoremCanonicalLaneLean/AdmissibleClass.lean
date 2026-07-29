import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ConstrainedClosure A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean
end HautevilleHouse
