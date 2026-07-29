import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean

definition RelationComposition {A B C : Type} (R : Relation A B) (S : Relation B C) : Relation A C :=
  { graph := { p | ∃ (b : B), (p.1, b) ∈ R.graph ∧ (b, p.2) ∈ S.graph } }

theorem relation_associative {A B C D : Type} (R : Relation A B) (S : Relation B C) (T : Relation C D) :
  RelationComposition (RelationComposition R S) T = RelationComposition R (RelationComposition S T) :=
  by
    ext ⟨a,d⟩; constructor
    · intro h; rcases h with ⟨c, h1, h2⟩; rcases h1 with ⟨b, hR, hS⟩; refine ⟨b, hR, ?_⟩; exact ⟨c, hS, h2⟩
    · intro h; rcases h with ⟨b, hR, h3⟩; rcases h3 with ⟨c, hS, hT⟩; refine ⟨c, ?_, hT⟩; exact ⟨b, hR, hS⟩

end CategoriesSpansCospansRelationsPartialTheoremCanonicalLaneLean
end HautevilleHouse