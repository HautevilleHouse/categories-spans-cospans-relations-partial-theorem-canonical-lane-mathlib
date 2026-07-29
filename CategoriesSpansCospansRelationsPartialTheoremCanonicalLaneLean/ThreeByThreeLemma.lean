import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean.SpanCospanAdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean

structure ThreeByThreeDiagram where
  rowsAreExact : Prop
  columnsAreExact : Prop
  allSquaresCommute : Prop
  conclusion : rowsAreExact ∧ columnsAreExact ∧ allSquaresCommute

structure ThreeByThreeEvidence where
  diagram : ThreeByThreeDiagram
  exactnessWitness : diagram.rowsAreExact ∧ diagram.columnsAreExact
  commutativityWitness : diagram.allSquaresCommute

def ThreeByThreeClosed (d : ThreeByThreeDiagram) : Prop :=
  d.rowsAreExact ∧ d.columnsAreExact ∧ d.allSquaresCommute

theorem three_by_three_closed_from_evidence (e : ThreeByThreeEvidence) : ThreeByThreeClosed e.diagram :=
  And.intro e.exactnessWitness.1 (And.intro e.exactnessWitness.2 e.commutativityWitness)

theorem three_by_three_to_bridge (A : AdmissibleClass) (d : ThreeByThreeDiagram) :
  (ThreeByThreeClosed d) → bridgeClosed A :=
  λ h => bridge_from_admissible_class A

end CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean
end HautevilleHouse
